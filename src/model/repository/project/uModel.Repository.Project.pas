unit uModel.Repository.Project;

interface

uses
  System.Classes, System.Generics.Collections, uModel.Abstraction, uModel.Entities.Project,
  Data.DB;

type
  TProjectRepository = class(TInterfacedObject, IRepository<TProject>)
  public
    function Fields: TStrings;
    procedure SetStatement(Statement: IStatement; Entity: TProject);
    procedure SetProperty(Statement: IStatement; Entity: TProject);
    function Save(Entity: TProject): Boolean;
    procedure AfterSave(Entity: TProject);
    function Update(Entity: TProject): Boolean; overload;
    function Update(CommandSQL: String; Parameter: String; Entity: TProject): Boolean; overload;
    function DeleteById(Entity: TProject): Boolean;
    function FindById(Id: Integer): TProject;
    function FindExists: Boolean; overload;
    function FindExists(CommadSQL: String; Parameter: String;
      ParameterType: TFieldType; Value: Variant): IStatement; overload;
    function FindAll: TObjectList<TProject>; overload;
    function FindAll(CommadSQL: String): TObjectList<TProject>; overload;
    function FindAll(CommadSQL: String; Entity: TProject): TObjectList<TProject>; overload;

    destructor Destroy; override;
  end;

implementation

{ TProjectRepository }

uses
  System.SysUtils, FireDAC.Stan.Error, uModel.Repository.StatementFactory,
  uModel.DataManagerFactory, uModel.Repository.DataManager, uModel.FireDACEngineException,
  FireDAC.Stan.Param, uModel.ConstsStatement.Projects, uModel.Repository.RepositoryContext;

procedure TProjectRepository.AfterSave(Entity: TProject);
var
  Statement: IStatement;
begin
  try
    Statement:= TStatementFactory.GetStatement(DataManager);

    Statement.Query.SQL.Add(QUERY_LASTINSERTID_PROJECTS);
    Statement.Query.Open;

    Entity.Code := Statement.Query.FieldByName('LastInsertId').AsInteger;

  except
    on Error: EFDDBEngineException do
      begin
        raise Exception.Create(TFireDACEngineException.GetMessage(Error));
      end;
  end;
end;

function TProjectRepository.DeleteById(Entity: TProject): Boolean;
var
  Statement: IStatement;
begin
  try
    Statement:= TStatementFactory.GetStatement(DataManager);

    Statement.Query.SQL.Add(QUERY_DELETE_PROJECT_COD);
    Statement.Query.Params.ParamByName('project_cod').AsInteger:= Entity.Code;
    Statement.Query.ExecSQL;

    Result:=  Statement.Query.RowsAffected = ROWS_AFFECTED;

  except
    on Error: EFDDBEngineException do
      begin
        raise Exception.Create(TFireDACEngineException.GetMessage(Error));
      end;
  end;
end;

destructor TProjectRepository.Destroy;
begin
  inherited Destroy;
end;

function TProjectRepository.Fields: TStrings;
var
  Items: TStrings;
begin
  try
    Items:= DataManager.GetEtity('tab_projects').GetFieldNames;

    Result:= Items;
  except
    on Error: EFDDBEngineException do
      begin
        raise Exception.Create(TFireDACEngineException.GetMessage(Error));
      end;
  end;
end;

function TProjectRepository.FindAll(CommadSQL: String): TObjectList<TProject>;
var
  Statement: IStatement;
  List: TObjectList<TProject>;
  Project: TProject;
begin
  try
    Statement:= TStatementFactory.GetStatement(DataManager);
    List:= TObjectList<TProject>.Create();

    Statement.SQL(CommadSQL)
      .Open
        .Query
          .First();

    while not Statement.Query.Eof do
      begin
        Project:= TProject.Create();
        Project.Code:= Statement.Query.FieldByName('project_cod').AsInteger;
        Project.Name:= Statement.Query.FieldByName('name').AsString;
        Project.Description:= Statement.Query.FieldByName('description').AsString;
        Project.StartDate:= Statement.Query.FieldByName('start_date').AsDateTime;
        Project.EndDate:= Statement.Query.FieldByName('end_date').AsDateTime;
        Project.Status:= Statement.Query.FieldByName('status').AsString[1];
        List.Add(Project);
        Statement.Query.Next();
      end;

    Result:= List;

  except
    on Error: EFDDBEngineException do
      begin
        raise Exception.Create(TFireDACEngineException.GetMessage(Error));
      end;
  end;
end;

function TProjectRepository.FindAll: TObjectList<TProject>;
var
  Statement: IStatement;
  List: TObjectList<TProject>;
  Project: TProject;
begin
  try
    Statement:= TStatementFactory.GetStatement(DataManager);
    List:= TObjectList<TProject>.Create;

    Statement.SQL(QUERY_PROJECTS)
      .Open
        .Query;

    Statement.Query.First;
    while not Statement.Query.Eof do
      begin
        Project:= TProject.Create();

        SetProperty(Statement, Project);

        List.Add(Project);

        Statement.Query.Next;
      end;

    Result:= List;
  except
    on Error: EFDDBEngineException do
      begin
        raise Exception.Create(TFireDACEngineException.GetMessage(Error));
      end;
  end;
end;

function TProjectRepository.FindById(Id: Integer): TProject;
var
  Statement: IStatement;
begin
  try
    Statement:= TStatementFactory.GetStatement(DataManager);

    Statement.Query.SQL.Add(QUERY_PROJECTS_BY_COD);
    Statement.Query.Params.ParamByName('project_cod').AsInteger:= Id;
    Statement.Query.Open;

    var Project:= TProject.Create;
    SetProperty(Statement, Project);

    Result:= Project;
  except
    on Error: EFDDBEngineException do
      begin
        raise Exception.Create(TFireDACEngineException.GetMessage(Error));
      end;
  end;
end;

function TProjectRepository.FindExists(CommadSQL: String; Parameter: String;
  ParameterType: TFieldType; Value: Variant): IStatement;
begin
  var RepositoryContext:= TRepositoryContext.Create;
  try
    Result:= RepositoryContext.FindExists(CommadSQL, Parameter, ParameterType, Value);
  finally
    FreeAndNil(RepositoryContext);
  end;
end;

function TProjectRepository.FindExists: Boolean;
begin
  Result:= False;
end;

function TProjectRepository.Save(Entity: TProject): Boolean;
var
  Statement: IStatement;
begin
  DataManager.StartTransaction;
  try
    Statement:= TStatementFactory.GetStatement(DataManager);

    Statement.Query.SQL.Add(QUERY_INSERT_PROJECTS);
    SetStatement(Statement, Entity);
    Statement.Query.Open;

    var RowsAffected := Statement.Query.RowsAffected = ROWS_AFFECTED;

    {Statement.Query.SQL.Clear();
    Statement.Query.SQL.Add(QUERY_LASTINSERTID_PROJECTS);
    Statement.Query.Open;}

    Entity.Code := Statement.Query.FieldByName('project_cod').AsInteger;

    DataManager.Commit;

    //AfterSave(Entity);

    Result:= RowsAffected;

  except
    on Error: EFDDBEngineException do
      begin
        DataManager.Rollback;
        raise Exception.Create(TFireDACEngineException.GetMessage(Error));
      end;
  end;
end;

procedure TProjectRepository.SetProperty(Statement: IStatement;
  Entity: TProject);
begin
  try
    Entity.Code:= Statement.Query.FieldByName('project_cod').AsInteger;
    Entity.Name:= Statement.Query.FieldByName('name').AsString;
    Entity.Description:= Statement.Query.FieldByName('description').AsString;
    Entity.StartDate:= Statement.Query.FieldByName('start_date').AsDateTime;
    Entity.EndDate:= Statement.Query.FieldByName('end_date').AsDateTime;
    Entity.Status:= Statement.Query.FieldByName('status').AsString[1];

  except
    on Error: EFDDBEngineException do
      begin
        raise Exception.Create(TFireDACEngineException.GetMessage(Error));
      end;
  end;
end;

procedure TProjectRepository.SetStatement(Statement: IStatement;
  Entity: TProject);
begin
  try
    Statement.Query.Params.ParamByName('name').AsString:= Entity.Name;
    Statement.Query.Params.ParamByName('description').AsString:= Entity.Description;
    Statement.Query.Params.ParamByName('start_date').AsDate:= Entity.StartDate;
    Statement.Query.Params.ParamByName('end_date').AsDate:= Entity.EndDate;
    Statement.Query.Params.ParamByName('status').AsString:= Entity.Status;

  except
    on Error: EFDDBEngineException do
      raise Exception.Create(TFireDACEngineException.GetMessage(Error));
  end;
end;

function TProjectRepository.Update(CommandSQL, Parameter: String;
  Entity: TProject): Boolean;
begin
  Result:= False;
end;

function TProjectRepository.Update(Entity: TProject): Boolean;
var
  Statement: IStatement;
begin
  DataManager.StartTransaction;
  try
    Statement:= TStatementFactory.GetStatement(DataManager);

    Statement.Query.SQL.Add(QUERY_UPDATE_PROJETS_BY_COD);
    Statement.Query.Params.ParamByName('project_cod').AsInteger:= Entity.Code;
    SetStatement(Statement, Entity);
    Statement.Query.ExecSQL;
    DataManager.Commit;

    Result:= Statement.Query.RowsAffected = ROWS_AFFECTED;
  except
    on Error: EFDDBEngineException do
      begin
        DataManager.Rollback;
        raise Exception.Create(TFireDACEngineException.GetMessage(Error));
      end;
  end;
end;

function TProjectRepository.FindAll(CommadSQL: String;
  Entity: TProject): TObjectList<TProject>;
begin
  Result:= nil;
end;

end.

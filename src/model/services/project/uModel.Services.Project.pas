unit uModel.Services.Project;

interface

uses
  System.Classes, System.Generics.Collections, uModel.Abstraction, uModel.Entities.Project,
  Data.DB;

type
  TProjectService = class(TInterfacedObject, IService<TProject>)
  private
    ProjectRepository: IRepository<TProject>;
  public
    function Fields: TStrings;
    function IsValid(Entity: TProject; out MessageContext: String): Boolean;
    function Save(Entity: TProject): Boolean;
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
    constructor Create; reintroduce;
    destructor Destroy; override;
  end;

implementation

{ TProjectService }

uses
  System.SysUtils, uModel.Repository.Project, Vcl.Dialogs, uModel.ConstsStatement.Projects;

constructor TProjectService.Create;
begin
  inherited Create;

  ProjectRepository:= TProjectRepository.Create;
end;

function TProjectService.DeleteById(Entity: TProject): Boolean;
begin
  Result:= ProjectRepository.DeleteById(Entity);
end;

destructor TProjectService.Destroy;
begin
  inherited Destroy;
end;

function TProjectService.Fields: TStrings;
var
  Items: TStrings;
begin
  Items:= ProjectRepository.Fields;

  Result:= Items;
end;

function TProjectService.FindAll: TObjectList<TProject>;
begin
  Result:= nil;
end;

function TProjectService.FindAll(CommadSQL: String): TObjectList<TProject>;
begin
  Result:= ProjectRepository.FindAll(CommadSQL);
end;

function TProjectService.FindAll(CommadSQL: String;
  Entity: TProject): TObjectList<TProject>;
begin
  Result:= nil;
end;

function TProjectService.FindById(Id: Integer): TProject;
begin
  Result:= ProjectRepository.FindById(Id);
end;

function TProjectService.FindExists(CommadSQL: String; Parameter: String;
  ParameterType: TFieldType; Value: Variant): IStatement;
begin
  Result:= ProjectRepository.FindExists(CommadSQL, Parameter, ParameterType, Value);
end;

function TProjectService.FindExists: Boolean;
begin
  Result:= False;
end;

function TProjectService.IsValid(Entity: TProject; out MessageContext: String): Boolean;
begin
  Result:= False;

  if Length( Entity.Name ) = 0 then
    begin
      MessageContext:= 'Name not given.';
      Exit();
    end;

  if Length( Entity.Description ) = 0 then
    begin
      MessageContext:= 'Description not given.';
      Exit();
    end;

  if DateToStr(Entity.StartDate) = '00/00/0000' then
    begin
      MessageContext:= 'Project start date not specified.';
      Exit();
    end;

  if DateToStr(Entity.EndDate) = '00/00/0000' then
    begin
      MessageContext := 'Project end date not specified.';
      Exit();
    end;

  if not CharInSet(Entity.Status, ['A', 'P', 'C']) then
    begin
      MessageContext := 'Invalid stabtus.';
      Exit();
    end;

  Result := True;
end;

function TProjectService.Save(Entity: TProject): Boolean;
var
  MessageContext: String;
begin
  Result:= False;

  if IsValid(Entity, MessageContext) then
    Result:= ProjectRepository.Save(Entity)
  else ShowMessage(MessageContext);
end;

function TProjectService.Update(CommandSQL, Parameter: String;
  Entity: TProject): Boolean;
begin
  Result:= False;
end;

function TProjectService.Update(Entity: TProject): Boolean;
var
  MessageContext: String;
begin
  Result:= False;

  if IsValid(Entity, MessageContext) then
    Result:= ProjectRepository.Update(Entity)
  else ShowMessage(MessageContext);
end;

end.

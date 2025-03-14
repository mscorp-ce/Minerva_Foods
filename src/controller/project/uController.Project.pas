unit uController.Project;

interface

uses
  System.Classes, System.Generics.Collections, uModel.Abstraction, uModel.Entities.Project,
  Data.DB;

type
  TControllerProject = class(TInterfacedObject, IController<TProject>)
  private
    ProjectService: IService<TProject>;
  public
    function Fields: TStrings;
    function Save(Entity: TProject): Boolean;
    function Update(Entity: TProject): Boolean; overload;
    function Update(CommandSQL: String; Parameter: String; Entity: TProject): Boolean; overload;
    function DeleteById(Entity: TProject): Boolean;
    function FindById(Id: Integer): TProject;
    function FindExists: Boolean; overload;
    function FindExists(CommadSQL: String; Parameter: String; ParameterType: TFieldType; Value: Variant): IStatement; overload;
    function FindAll: TObjectList<TProject>; overload;
    function FindAll(CommadSQL: String): TObjectList<TProject>; overload;
    function FindAll(CommadSQL: String; Entity: TProject): TObjectList<TProject>; overload;
    constructor Create; reintroduce;
    destructor Destroy; override;
  end;

implementation

{ TControllerProject }

uses uModel.Services.Project;

constructor TControllerProject.Create;
begin
  inherited Create;

  ProjectService:= TProjectService.Create;
end;

function TControllerProject.DeleteById(Entity: TProject): Boolean;
begin
  Result:= ProjectService.DeleteById(Entity);
end;

destructor TControllerProject.Destroy;
begin
  inherited Destroy;
end;

function TControllerProject.Fields: TStrings;
begin
  Result:= nil;
end;

function TControllerProject.FindAll: TObjectList<TProject>;
begin
  Result:= nil;
end;

function TControllerProject.FindAll(CommadSQL: String): TObjectList<TProject>;
begin
  Result:= nil;
end;

function TControllerProject.FindById(Id: Integer): TProject;
begin
  Result:= ProjectService.FindById(Id);
end;

function TControllerProject.FindExists(CommadSQL: String; Parameter: String; ParameterType: TFieldType; Value: Variant): IStatement;
begin
  Result:= ProjectService.FindExists(CommadSQL, Parameter, ParameterType, Value);
end;

function TControllerProject.FindExists: Boolean;
begin
  Result:= False;
end;

function TControllerProject.Save(Entity: TProject): Boolean;
begin
  Result:= ProjectService.Save(Entity);
end;

function TControllerProject.Update(CommandSQL, Parameter: String;
  Entity: TProject): Boolean;
begin
  Result:= False;
end;

function TControllerProject.Update(Entity: TProject): Boolean;
begin
  Result:= ProjectService.Update(Entity);
end;

function TControllerProject.FindAll(CommadSQL: String;
  Entity: TProject): TObjectList<TProject>;
begin
  Result:= nil;
end;

end.

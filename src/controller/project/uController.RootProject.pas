unit uController.RootProject;

interface

uses
  System.Classes, System.Generics.Collections, uModel.Abstraction, uModel.Entities.Project;

type
  TControllerRootProject = class(TInterfacedObject, IRootController<TProject>)
  private
    ProjectService: IService<TProject>;
  public
    function Fields: TStrings;
    function FindAll(CommadSQL: String): TObjectList<TProject>; overload;
    function FindAll(CommadSQL: String; Entity: TProject): TObjectList<TProject>; overload;

    constructor Create; reintroduce;
    destructor Destroy; override;
  end;

implementation

{ TControllerRootProject }

uses uModel.Services.Project;

constructor TControllerRootProject.Create();
begin
  inherited Create;

  ProjectService:= TProjectService.Create();
end;

destructor TControllerRootProject.Destroy();
begin
  inherited;
end;

function TControllerRootProject.Fields(): TStrings;
var
  Items: TStrings;
begin
  Items:= ProjectService.Fields;

  Result:= Items;
end;

function TControllerRootProject.FindAll(CommadSQL: String;
  Entity: TProject): TObjectList<TProject>;
begin
  Result:= nil;
end;

function TControllerRootProject.FindAll(CommadSQL: String): TObjectList<TProject>;
begin
  Result:= ProjectService.FindAll(CommadSQL);
end;

end.

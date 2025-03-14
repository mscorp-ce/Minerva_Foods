unit uView.CustomFormFilterProject;

interface

uses
  System.Classes, uView.FormFilters, System.Generics.Collections, uModel.Abstraction,
  uController.RootProject, uModel.Entities.Project;
type
  TCustomFormFilterProject = class(TfrmFiltros)
  private
    ControllerRootProject: IRootController<TProject>;
  protected
    { Protected declarations }
    procedure DoShow; override;
  public
    constructor Create; reintroduce;
  end;

implementation

uses
  System.SysUtils;

{ TCustomFormFilterProject }

constructor TCustomFormFilterProject.Create;
begin
  inherited Create(nil);

  ControllerRootProject:= TControllerRootProject.Create;
end;

procedure TCustomFormFilterProject.DoShow;
var
  Items: TStrings;
begin
  inherited;

  try
    Items:= ControllerRootProject.Fields;

    Self.cbxFields.Items.AddStrings( Items );

    Self.cbxOrder.Items.AddStrings( Items );
    Self.cbxOrder.ItemIndex:= 0;
  finally
    FreeAndNil(Items);
  end;
end;

end.

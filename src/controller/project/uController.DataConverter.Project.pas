unit uController.DataConverter.Project;

interface

uses
  System.Generics.Collections, Datasnap.DBClient, uModel.Abstraction, uModel.Entities.Project;

type
  TDataConverterProject = class(TInterfacedObject, IDataConverter<TProject>)
  public
    procedure Populate(Source: TObjectList<TProject>; Target: TClientDataSet);

    destructor Destroy; override;
  end;

implementation

{ TDataConverterProject }

destructor TDataConverterProject.Destroy;
begin
  inherited Destroy;
end;

procedure TDataConverterProject.Populate(Source: TObjectList<TProject>;
  Target: TClientDataSet);
var
  i: Integer;
begin
  Target.FieldByName('project_cod').ReadOnly := False;

  for i:= 0 to Source.Count -1 do
    begin
      Target.Append;
      Target.FieldByName('project_cod').AsInteger:= Source.Items[i].Code;
      Target.FieldByName('name').AsString:= Source.Items[i].Name;
      Target.FieldByName('description').AsString:= Source.Items[i].Description;
      Target.FieldByName('start_date').AsDateTime:= Source.Items[i].StartDate;
      Target.FieldByName('end_date').AsDateTime:= Source.Items[i].EndDate;
      Target.FieldByName('status').AsString:= Source.Items[i].Status;
      Target.Post;
    end;
  Target.FieldByName('project_cod').ReadOnly := True;
end;

end.

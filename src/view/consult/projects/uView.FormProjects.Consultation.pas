﻿unit uView.FormProjects.Consultation;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uView.FormConsult, Data.DB,
  Datasnap.DBClient, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.ExtCtrls,
  System.Generics.Collections, uModel.Abstraction, uModel.Entities.Project, FireDAC.Comp.DataSet;

type
  TfrmProjectsConsultation = class(TfrmConsult)
    cdsConsultproject_cod: TIntegerField;
    cdsConsultname: TWideStringField;
    cdsConsultdescription: TWideStringField;
    cdsConsultstart_date: TDateField;
    cdsConsultend_date: TDateField;
    cdsConsultstatus: TStringField;
    procedure grdConsultaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    ControllerProject: IController<TProject>;

    procedure Search(const CommandSQL: String);
    procedure ExecuteFrom(const Id: Integer = 0);
  protected
    procedure DoShow(); override;
    procedure Filter(); override;
    procedure All(); override;
    procedure Include(); override;
    procedure Alter(); override;
    procedure Delete(); override;
    procedure Consult(); override;
  public
    { Public declarations }
  end;

var
  frmProjectsConsultation: TfrmProjectsConsultation;

implementation

{$R *.dfm}

uses
  System.UITypes, uModel.ConstsStatement.Projects, uController.RootProject,
  uController.Project, uController.DataConverter.Project, uView.Project,
  uView.CustomFormFilterProject;

{ TfrmConsulta2 }

procedure TfrmProjectsConsultation.All();
begin
  inherited;
  Search(QUERY_PROJECTS);
end;

procedure TfrmProjectsConsultation.Alter();
begin
  inherited;

  State:= dsEdit;

  ExecuteFrom(cdsConsult.FieldByName('project_cod').AsInteger);

  All();
end;

procedure TfrmProjectsConsultation.Consult();
begin
  inherited;

  State:= dsBrowse;

  ExecuteFrom();
end;

procedure TfrmProjectsConsultation.Delete();
const
  Msg = 'Do you really want to delete the selected record?';
begin
  inherited;

  if cdsConsult.IsEmpty then
    begin
      ShowMessage('There are no records to be deleted.');
      Exit();
    end;

  if MessageDlg(Msg, mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then
    begin
      var Project := TProject.Create();
      try
        Project.Code:= cdsConsult.FieldByName('project_cod').AsInteger;
        if ControllerProject.DeleteById(Project) then
          begin
            All();
          end;
      finally
        FreeAndNil(Project);
      end;
    end;
end;

procedure TfrmProjectsConsultation.DoShow();
begin
  inherited;
  ControllerProject := TControllerProject.Create();

  All();
  State:= dsBrowse;
end;

procedure TfrmProjectsConsultation.Filter();
begin
  inherited;

  var CustomFormFilter:= TCustomFormFilterProject.Create();
  try
    CustomFormFilter.ShowModal;
    var SQL:= QUERY_PROJECTS;
    SQL:= SQL + CustomFormFilter.Confirm('PRO');

    if SQL.IsEmpty() then
      begin
        ShowMessage('No filter informed.');
        Exit();
      end;

    Search(SQL);

  finally
    FreeAndNil(CustomFormFilter);
  end;
end;

procedure TfrmProjectsConsultation.grdConsultaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
const
  DELETE = 46;
  CANCEL_ACTION_OF_DELETE = 0;
begin
  inherited;
  if (Shift = [ssCtrl]) and (Key = DELETE) then
    Key := CANCEL_ACTION_OF_DELETE;
end;

procedure TfrmProjectsConsultation.ExecuteFrom(const Id: Integer);
begin
  var FromProject:= TfrmProject.Create(Self);
  try
    FromProject.Id:= Id;
    FromProject.ShowModal();
  finally
    FreeAndNil(FromProject);
  end;
end;

procedure TfrmProjectsConsultation.Include();
begin
  inherited;
  State:= dsInsert;

  ExecuteFrom();

  All();
end;

procedure TfrmProjectsConsultation.Search(const CommandSQL: String);
var
  ControllerRootProject : IRootController<TProject>;
  DataConverter: IDataConverter<TProject>;
begin
  ControllerRootProject:= TControllerRootProject.Create();
  cdsConsult.Close();

  cdsConsult.CreateDataSet();

  var Projects:= ControllerRootProject.FindAll(CommandSQL);
  try
    DataConverter:= TDataConverterProject.Create();
    DataConverter.Populate(Projects, cdsConsult);

    cdsConsult.Open();

  finally
    FreeAndNil(Projects);
  end;
end;

end.

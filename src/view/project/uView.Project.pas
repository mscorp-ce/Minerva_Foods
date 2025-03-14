unit uView.Project;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uView.FormBaseRegistration,
  Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Buttons, Vcl.ExtCtrls, Data.DB, Datasnap.DBClient,
  Vcl.DBCtrls, Vcl.WinXCalendars, uModel.Abstraction, uModel.Entities.Project,
  Vcl.Grids, Vcl.DBGrids;

type
  TfrmProject = class(TfrmBaseRegistration)
    lblProjectCode: TLabel;
    edtProjectCode: TEdit;
    lblStartDate: TLabel;
    capStartDate: TCalendarPicker;
    edtName: TEdit;
    lblDescription: TLabel;
    cbxStatus: TComboBox;
    lblStatus: TLabel;
    mmDescription: TMemo;
    lblEndDate: TLabel;
    capEndDate: TCalendarPicker;
  protected
    procedure DoShow; override;
  private
    { Private declarations }
    ControllerProject: IController<TProject>;
    Project: TProject;
    FId: Integer;
    //procedure SQLProjects;
    procedure SetId(const Value: Integer);
    procedure EnableControls();
  protected
    { Protected declarations }
    procedure AddFocus(); override;
    procedure GetProperty(); override;
    procedure SetProperty(); override;
    function Save(): Boolean; override;
    procedure AfterSave(); override;

    procedure Restore(); override;
  public
    { Public declarations }
    property Id: Integer read FId write SetId;
    destructor Destroy(); override;
  end;

const
  UNKNOWN = -1;
  IN_PROGRESS = 0;
  PENDING = 1;
  COMPLETED = 2;

var
  frmProject: TfrmProject;

implementation

{$R *.dfm}

uses
  System.Generics.Collections, uController.RootProject,
  uController.DataConverter.Project, uController.Project;

function TfrmProject.Save(): Boolean;
begin
  inherited;
  SetProperty;
  case State of
    dsInsert:
      begin
        if ControllerProject.Save(Project) then
          begin
            State:= dsBrowse;
            AfterSave;
            ShowMessage('Project successfully recorded.');
          end;
      end;

    dsEdit:
      begin
        if ControllerProject.Update(Project) then
          begin
            State:= dsBrowse;
            AfterSave;
            ShowMessage('Project successfully changed.');
          end;
      end;
    dsBrowse: Close;
  end;

  EnableControls();

  Result:= True;
end;

procedure TfrmProject.SetId(const Value: Integer);
begin
  FId := Value;
end;

procedure TfrmProject.SetProperty();
begin
  inherited;
  Project.Code:= StrToIntDef(edtProjectCode.Text, 0);
  Project.Name:= edtName.Text;
  Project.Description:= mmDescription.Text;
  Project.StartDate:= capStartDate.Date;
  Project.EndDate:= capEndDate.Date;

  case cbxStatus.ItemIndex of
    IN_PROGRESS: Project.Status:= 'A';
    PENDING: Project.Status:= 'P';
    COMPLETED: Project.Status:= 'C';
  end;
end;

procedure TfrmProject.AddFocus();
begin
  inherited;
  edtName.SetFocus;
end;

procedure TfrmProject.Restore();
begin
  inherited;
  if State = dsEdit then
    begin
      Project:= ControllerProject.FindById(fId);
      GetProperty();
    end;

  EnableControls();
end;

procedure TfrmProject.AfterSave();
begin
  inherited;
  edtProjectCode.Text:= IntToStr( Project.Code );
  State:= dsBrowse;
end;

destructor TfrmProject.Destroy();
begin
  FreeAndNil(Project);

  inherited Destroy;
end;

procedure TfrmProject.EnableControls();
begin
  spbRestore.Enabled:= State = dsEdit;
  spbRestore.Visible:= State = dsEdit;
end;

procedure TfrmProject.DoShow();
begin
  inherited;
  ControllerProject:= TControllerProject.Create();

  EnableControls();

  AddFocus();
  //SQLProjects;

  if id > 0 then
    begin
      Project:= ControllerProject.FindById(id);
      GetProperty();
    end
  else
    begin
      Project:= TProject.Create();
      //edtProjectCode.Text:= IntToStr( ControllerProject.GeneratedValue );
    end;
end;

procedure TfrmProject.GetProperty();
begin
  inherited;

  edtProjectCode.Text:= IntToStr(Project.Code);
  edtName.Text:= Project.Name;
  mmDescription.Text:= Project.Description;
  capStartDate.Date:= Project.StartDate;
  capEndDate.Date:= Project.EndDate;

  if Project.Status = 'A' then
    cbxStatus.ItemIndex:= IN_PROGRESS
  else if Project.Status = 'P' then
    cbxStatus.ItemIndex:= PENDING
  else if Project.Status = 'C' then
    cbxStatus.ItemIndex:= COMPLETED
  else
    cbxStatus.ItemIndex:= UNKNOWN;
end;

end.

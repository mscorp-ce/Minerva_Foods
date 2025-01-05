unit uView.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, System.UITypes;

type
  TfrmMain = class(TForm)
    mnMenu: TMainMenu;
    mniRegistrations: TMenuItem;
    mniProjects: TMenuItem;
    mniMovements: TMenuItem;
    mniProjectsTasks: TMenuItem;
    mniExit: TMenuItem;
    mniClose: TMenuItem;
    procedure mniProjectsClick(Sender: TObject);
    procedure mniProjectsTasksClick(Sender: TObject);
    procedure mniCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses
  uView.FormProjects.Consultation;

procedure TfrmMain.mniCloseClick(Sender: TObject);
begin
  if MessageDlg('Do you want to close the system?', mtConfirmation, [mbYes, mbCancel], 0) = mrYes then
    Close();
end;

procedure TfrmMain.mniProjectsClick(Sender: TObject);
begin
  var ProjectsConsultation := TfrmProjectsConsultation.Create(Self);
  try
    ProjectsConsultation.ShowModal();
  finally
    FreeAndNil(ProjectsConsultation);
  end;
end;

procedure TfrmMain.mniProjectsTasksClick(Sender: TObject);
begin
  //
end;

end.

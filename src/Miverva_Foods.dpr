program Miverva_Foods;

uses
  Vcl.Forms,
  uModel.Abstraction in 'model\uModel.Abstraction.pas',
  uModel.FireDAC in 'model\uModel.FireDAC.pas',
  uInfra.Libary in 'infra\uInfra.Libary.pas',
  uModel.FireDACEngineException in 'model\uModel.FireDACEngineException.pas',
  uModel.DataManagerFactory in 'model\repository\uModel.DataManagerFactory.pas',
  uModel.Repository.StatementFactory in 'model\repository\uModel.Repository.StatementFactory.pas',
  uModel.Repository.Statement in 'model\repository\uModel.Repository.Statement.pas',
  uModel.Repository.DataManager in 'model\repository\uModel.Repository.DataManager.pas',
  uView.Main in 'view\uView.Main.pas' {frmMain},
  uView.FormConsult in 'view\consult\uView.FormConsult.pas' {frmConsult},
  uView.FormProjects.Consultation in 'view\consult\projects\uView.FormProjects.Consultation.pas' {frmProjectsConsultation},
  uModel.Entities.Project in 'model\entities\project\uModel.Entities.Project.pas',
  uModel.ConstsStatement.Projects in 'model\repository\project\statement\uModel.ConstsStatement.Projects.pas',
  uController.RootProject in 'controller\project\uController.RootProject.pas',
  uModel.Services.Project in 'model\services\project\uModel.Services.Project.pas',
  uModel.Repository.Project in 'model\repository\project\uModel.Repository.Project.pas',
  uModel.Repository.RepositoryContext in 'model\repository\uModel.Repository.RepositoryContext.pas',
  uController.Project in 'controller\project\uController.Project.pas',
  uController.DataConverter.Project in 'controller\project\uController.DataConverter.Project.pas',
  uView.FormBaseRegistration in 'view\form_registration\uView.FormBaseRegistration.pas' {frmBaseRegistration},
  uView.Project in 'view\project\uView.Project.pas' {frmProject},
  uView.CustomFormFilterProject in 'view\consult\uView.CustomFormFilterProject.pas',
  uView.FormFilters in 'view\consult\uView.FormFilters.pas' {frmFiltros};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.

unit uModel.FireDAC;

interface

uses
  uModel.Abstraction, System.Classes, System.SysUtils, FireDAC.Stan.Option,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Phys.MSSQLDef,
  FireDAC.Phys.ODBCBase, FireDAC.Phys.MSSQL, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Moni.RemoteClient, FireDAC.Moni.FlatFile,
  FireDAC.Moni.Base, FireDAC.Moni.Custom;

type
  TModelFireDAC = class(TInterfacedObject, IDataManager)
    procedure onRecover(ASender, AInitiator: TObject;
      AException: Exception; var AAction: TFDPhysConnectionRecoverAction);
    procedure onOutput(ASender: TFDMoniClientLinkBase;
      const AClassName, AObjName, AMessage: string);
  private
    FConnection : TFDConnection;

    FMSSQLDriver: TFDPhysMSSQLDriverLink;

    FMonitor: TFDMoniCustomClientLink;

    FMonitorRemote: TFDMoniRemoteClientLink;

    FMessages: TStrings;
    FEtitieName: String;
  public
    constructor Create();
    destructor Destroy(); override;

    function GetStartTransaction(): IDataManager;
    function GetCommit(): IDataManager;
    function GetRollback(): IDataManager;
    function GetEtity(EtitieName: String): IDataManager;
    function GetFieldNames(): TStrings;

    function GetConnection(): TCustomConnection;

    property Connection: TCustomConnection read GetConnection;
    property StartTransaction: IDataManager read GetStartTransaction;
    property Commit: IDataManager read GetCommit;
    property Rollback: IDataManager read GetRollback;
  end;

implementation

uses
  uInfra.Libary, Vcl.Dialogs, Vcl.Controls, System.UITypes, FireDAC.Stan.Intf,
  FireDAC.Stan.Error, uModel.FireDACEngineException;

{ TModelFireDAC }

constructor TModelFireDAC.Create();
begin
  inherited Create;
  try

    FConnection := TFDConnection.Create(nil);
    FConnection.DriverName                := TLibary.GetINI('DATA_MSSMQL', 'DriverName');
    FConnection.Params.Values['Server']   := TLibary.GetINI('DATA_MSSMQL', 'Server');
    FConnection.Params.Values['Database'] := TLibary.GetINI('DATA_MSSMQL', 'Database');
    FConnection.Params.Values['User_Name']:= TLibary.GetINI('DATA_MSSMQL', 'User_Name');
    FConnection.Params.Values['Password'] := TLibary.GetINI('DATA_MSSMQL', 'Password');

    FMSSQLDriver:= TFDPhysMSSQLDriverLink.Create(nil);

    FMonitor:= TFDMoniCustomClientLink.Create(nil);
    FMonitor.Tracing:= false;

    FMonitorRemote:= TFDMoniRemoteClientLink.Create(nil);
    FMonitorRemote.Host:= '127.0.0.1';
    FMonitorRemote.Port:= 8050;
    FMonitorRemote.Timeout:= 3000;
    FMonitorRemote.Tracing:= False;

    FConnection.Params.MonitorBy:= mbRemote;

    FMessages:= TStringList.Create;

    FConnection.OnRecover:= onRecover;
    FConnection.Open;

  except
    on Error: EFDDBEngineException do
      ShowMessage( TFireDACEngineException.GetMessage(Error) );
  end;
end;

destructor TModelFireDAC.Destroy();
begin
  FreeAndNil( FConnection );
  FreeAndNil( FMSSQLDriver );
  FreeAndNil( FMonitor );
  FMessages.Clear();
  FreeAndNil( FMessages );
  FreeAndNil( FMonitorRemote );
  inherited Destroy();
end;

function TModelFireDAC.GetEtity(EtitieName: String): IDataManager;
begin
  fEtitieName:= EtitieName;
  Result:= Self;
end;

function TModelFireDAC.GetCommit(): IDataManager;
begin
  FConnection.Commit();
  Result:= Self;
end;

function TModelFireDAC.GetConnection(): TCustomConnection;
begin
  Result:= FConnection;
end;

function TModelFireDAC.GetFieldNames(): TStrings;
begin
  var Items:= TStringList.Create();
  try
    FConnection.GetFieldNames('', '', fEtitieName, '', Items);

    Result:= Items;
 except
    on Error: EFDDBEngineException do
      begin
        raise Exception.Create(TFireDACEngineException.GetMessage(Error));
      end;
  end;
end;

function TModelFireDAC.GetRollback(): IDataManager;
begin
  FConnection.Rollback();
  Result:= Self;
end;

function TModelFireDAC.GetStartTransaction(): IDataManager;
begin
  FConnection.StartTransaction();
  Result:= Self;
end;

procedure TModelFireDAC.onOutput(ASender: TFDMoniClientLinkBase;
  const AClassName, AObjName, AMessage: string);
begin
  FMessages.Add(AMessage);
end;

procedure TModelFireDAC.onRecover(ASender, AInitiator: TObject;
  AException: Exception; var AAction: TFDPhysConnectionRecoverAction);
begin
  var Res:= MessageDlg('Conex�o perdida, escolha o que voc� deseja fazer: YES - OffLine, Reconectar - OK, Falha - Cancel',
                   mtConfirmation, [mbYes, mbOK, mbCancel], 0
                   );

  case Res of
    mrYes: AAction:= faOfflineAbort;
    mrOK: AAction:= faRetry;
    mrCancel: AAction:= faFail;
  end;
end;

end.



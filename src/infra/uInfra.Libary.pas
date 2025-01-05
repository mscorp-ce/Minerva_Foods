unit uInfra.Libary;

interface

type
  TLibary = class
  public
    class function GetINI(Session, Key: String): String;
    class function GetNameAppToINI: String;
    class function Iif(const Condicao: Boolean; Se, SeNao: Variant): Variant;
  end;

implementation

{ TLibary }

uses
  System.SysUtils, System.IniFiles, Vcl.Forms;

class function TLibary.GetINI(Session, Key: String): String;
begin
  var Ini:= TIniFile.Create(GetNameAppToINI);

  try
    Result:= Ini.ReadString(Session, Key, '');
  finally
    FreeAndNil(Ini);
  end;
end;

class function TLibary.GetNameAppToINI: String;
begin
  Result:= ChangeFileExt(Application.ExeName, '.ini');
end;

class function TLibary.Iif(const Condicao: Boolean; Se, SeNao: Variant): Variant;
begin
  if Condicao then
    Result:= Se
  else Result := SeNao;
end;

end.



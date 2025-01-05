unit uModel.Entities.Project;

interface

uses
  System.SysUtils;

type
  TProject = class
  private
    FEndDate: TDate;
    FName: String;
    FCode: integer;
    FStatus: Char;
    FDescription: String;
    FStartDate: TDate;
    procedure SetDescription(const Value: String);
    procedure SetEndDate(const Value: TDate);
    procedure SetName(const Value: String);
    procedure SetCode(const Value: integer);
    procedure SetStartDate(const Value: TDate);
    procedure SetStatus(const Value: Char);
  public
    property Code: integer read FCode write SetCode;
    property Name: String read FName write SetName;
    property Description: String read FDescription write SetDescription;
    property StartDate: TDate read FStartDate write SetStartDate;
    property EndDate: TDate read FEndDate write SetEndDate;
    property Status: Char read FStatus write SetStatus;
  end;

implementation

{ TProject }

procedure TProject.SetDescription(const Value: String);
begin
  FDescription := Value;
end;

procedure TProject.SetEndDate(const Value: TDate);
begin
  FEndDate := Value;
end;

procedure TProject.SetName(const Value: String);
begin
  FName := Value;
end;

procedure TProject.SetCode(const Value: integer);
begin
  FCode := Value;
end;

procedure TProject.SetStartDate(const Value: TDate);
begin
  FStartDate := Value;
end;

procedure TProject.SetStatus(const Value: Char);
begin
  FStatus := Value;
end;

end.

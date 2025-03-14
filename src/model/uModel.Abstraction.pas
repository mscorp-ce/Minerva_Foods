unit uModel.Abstraction;

interface

uses
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Phys.MSSQLDef, FireDAC.Phys.ODBCBase,
  FireDAC.Phys.MSSQL, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.Generics.Collections, System.Classes, Datasnap.DBClient;

type
  TState = (dsBrowse, dsEdit, dsInsert, dsOpening);

  IDataManager = interface
  ['{1DD2469A-4C82-4D8F-8427-78C55C757E23}']
    function GetConnection(): TCustomConnection;
    function GetStartTransaction(): IDataManager;
    function GetCommit(): IDataManager;
    function GetRollback(): IDataManager;
    function GetEtity(EtitName: String): IDataManager;
    function GetFieldNames(): TStrings;

    property Connection: TCustomConnection read GetConnection;

    property StartTransaction: IDataManager read GetStartTransaction;
    property Commit: IDataManager read GetCommit;
    property Rollback: IDataManager read GetRollback;
  end;


  IStatement = interface
  ['{81215643-1822-462C-989C-D84EF6AB5B66}']
    function GetQuery(): TFDQuery;
    function SQL(const Value: String): IStatement;
    function Open(): IStatement;

    property Query: TFDQuery read GetQuery;
  end;

  IRootController<T: class> = interface
  ['{99EE0EAD-33BF-47DD-B5B1-22CE9D7B13F3}']
    function Fields(): TStrings;
    function FindAll(CommadSQL: String): TObjectList<T>; overload;
    function FindAll(CommadSQL: String; Entity: T): TObjectList<T>; overload;
  end;

  IController<T: class> = interface(IRootController<T>)
  ['{59731F6F-C868-4595-B7CF-93BB2E58210F}']
    function Fields(): TStrings;
    function Save(Entity: T): Boolean;
    function Update(Entity: T): Boolean; overload;
    function Update(CommandSQL: String; Parameter: String; Entity: T): Boolean; overload;
    function DeleteById(Entity: T): Boolean;
    function FindById(Id: Integer): T;
    function FindExists: Boolean; overload;
    function FindExists(CommadSQL: String; Parameter: String; ParameterType: TFieldType; Value: Variant): IStatement; overload;
    function FindAll(): TObjectList<T>; overload;
    function FindAll(CommadSQL: String; Entity: T): TObjectList<T>; overload;
  end;

  IService<T: class> = interface
  ['{00E52690-3756-42F7-BE5F-48172189664C}']
    function Fields(): TStrings;
    function IsValid(Entity: T; out MessageContext: String): Boolean;
    function Save(Entity: T): Boolean;
    function Update(Entity: T): Boolean; overload;
    function Update(CommandSQL: String; Parameter: String; Entity: T): Boolean; overload;
    function DeleteById(Entity: T): Boolean;
    function FindById(Id: Integer): T;
    function FindExists(): Boolean; overload;
    function FindExists(CommadSQL: String; Parameter: String;
      ParameterType: TFieldType; Value: Variant): IStatement; overload;
    function FindAll: TObjectList<T>; overload;
    function FindAll(CommadSQL: String): TObjectList<T>; overload;
    function FindAll(CommadSQL: String; Entity: T): TObjectList<T>; overload;
  end;

  IDataConverter<T: class> = interface
  ['{48FFC034-9EE6-47FA-8FE0-FA095FB911D6}']
    procedure Populate(Source: TObjectList<T>; Target: TClientDataSet);
  end;

  IRepository<T: class> = interface
  ['{7A18311C-838A-4B9E-81CB-2F6A9238519D}']
    function Fields(): TStrings;
    procedure SetStatement(Statement: IStatement; Entity: T);
    procedure SetProperty(Statement: IStatement; Entity: T);
    function Save(Entity: T): Boolean;
    procedure AfterSave(Entity: T);
    function Update(Entity: T): Boolean; overload;
    function Update(CommandSQL: String; Parameter: String; Entity: T): Boolean; overload;
    function DeleteById(Entity: T): Boolean;
    function FindById(Id: Integer): T;
    function FindExists: Boolean; overload;
    function FindExists(CommadSQL: String; Parameter: String;
      ParameterType: TFieldType; Value: Variant): IStatement; overload;
    function FindAll(): TObjectList<T>; overload;
    function FindAll(CommadSQL: String): TObjectList<T>; overload;
    function FindAll(CommadSQL: String; Entity: T): TObjectList<T>; overload;
  end;


var

  State: TState;

  StateItems: TState;

implementation

end.



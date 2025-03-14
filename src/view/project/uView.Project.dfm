inherited frmProject: TfrmProject
  Caption = 'Project'
  ClientHeight = 232
  ClientWidth = 655
  StyleElements = [seFont, seClient, seBorder]
  ExplicitWidth = 671
  ExplicitHeight = 271
  TextHeight = 13
  object lblProjectCode: TLabel [0]
    Left = 8
    Top = 16
    Width = 72
    Height = 13
    Caption = 'Project Code'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblStartDate: TLabel [1]
    Left = 10
    Top = 182
    Width = 62
    Height = 13
    Caption = 'Start Date '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblName: TLabel [2]
    Left = 135
    Top = 16
    Width = 32
    Height = 13
    Caption = 'Name'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblDescription: TLabel [3]
    Left = 8
    Top = 64
    Width = 64
    Height = 13
    Caption = 'Description'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblStatus: TLabel [4]
    Left = 256
    Top = 182
    Width = 37
    Height = 13
    Caption = 'Status'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblEndDate: TLabel [5]
    Left = 134
    Top = 182
    Width = 53
    Height = 13
    Caption = 'End Date '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtProjectCode: TEdit [6]
    Left = 8
    Top = 35
    Width = 121
    Height = 21
    ImeName = 'edtProjectCode'
    ReadOnly = True
    TabOrder = 0
  end
  inherited pnlControl: TPanel
    Left = 525
    Height = 232
    TabOrder = 6
    ExplicitLeft = 525
    ExplicitHeight = 232
    inherited spbRestore: TSpeedButton
      Top = 5
      ExplicitTop = 5
    end
    inherited spbOK: TSpeedButton
      Top = 49
      ExplicitTop = 49
    end
    inherited spbExit: TSpeedButton
      Top = 182
      ExplicitTop = 182
    end
  end
  object capStartDate: TCalendarPicker
    Left = 8
    Top = 201
    Width = 118
    Height = 21
    CalendarHeaderInfo.DaysOfWeekFont.Charset = DEFAULT_CHARSET
    CalendarHeaderInfo.DaysOfWeekFont.Color = clWindowText
    CalendarHeaderInfo.DaysOfWeekFont.Height = -13
    CalendarHeaderInfo.DaysOfWeekFont.Name = 'Segoe UI'
    CalendarHeaderInfo.DaysOfWeekFont.Style = []
    CalendarHeaderInfo.Font.Charset = DEFAULT_CHARSET
    CalendarHeaderInfo.Font.Color = clWindowText
    CalendarHeaderInfo.Font.Height = -20
    CalendarHeaderInfo.Font.Name = 'Segoe UI'
    CalendarHeaderInfo.Font.Style = []
    Color = clWindow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    TextHint = 'select a date'
  end
  object edtName: TEdit
    Left = 135
    Top = 35
    Width = 383
    Height = 21
    MaxLength = 100
    TabOrder = 1
  end
  object cbxStatus: TComboBox
    Left = 256
    Top = 201
    Width = 145
    Height = 22
    Style = csOwnerDrawFixed
    TabOrder = 5
    Items.Strings = (
      'In progress'
      'Pending'
      'Completed')
  end
  object mmDescription: TMemo
    Left = 8
    Top = 83
    Width = 510
    Height = 89
    MaxLength = 255
    TabOrder = 2
  end
  object capEndDate: TCalendarPicker
    Left = 132
    Top = 201
    Width = 118
    Height = 21
    CalendarHeaderInfo.DaysOfWeekFont.Charset = DEFAULT_CHARSET
    CalendarHeaderInfo.DaysOfWeekFont.Color = clWindowText
    CalendarHeaderInfo.DaysOfWeekFont.Height = -13
    CalendarHeaderInfo.DaysOfWeekFont.Name = 'Segoe UI'
    CalendarHeaderInfo.DaysOfWeekFont.Style = []
    CalendarHeaderInfo.Font.Charset = DEFAULT_CHARSET
    CalendarHeaderInfo.Font.Color = clWindowText
    CalendarHeaderInfo.Font.Height = -20
    CalendarHeaderInfo.Font.Name = 'Segoe UI'
    CalendarHeaderInfo.Font.Style = []
    Color = clWindow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    TextHint = 'select a date'
  end
end

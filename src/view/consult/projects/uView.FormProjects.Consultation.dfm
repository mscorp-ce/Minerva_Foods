inherited frmProjectsConsultation: TfrmProjectsConsultation
  Caption = 'Project Consultation'
  TextHeight = 13
  inherited grdConsult: TDBGrid
    OnKeyDown = grdConsultaKeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'project_cod'
        ReadOnly = True
        Title.Caption = 'Project Code'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'name'
        ReadOnly = True
        Title.Caption = 'Name'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'description'
        ReadOnly = True
        Title.Caption = 'Description'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 400
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'start_date'
        ReadOnly = True
        Title.Caption = 'Start Date'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'end_date'
        ReadOnly = True
        Title.Caption = 'End Date'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'status'
        ReadOnly = True
        Title.Caption = 'Status'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 64
        Visible = True
      end>
  end
  inherited cdsConsult: TClientDataSet
    ProviderName = 'DataModule1.DataSetProvider1'
    object cdsConsultproject_cod: TIntegerField
      FieldName = 'project_cod'
    end
    object cdsConsultname: TWideStringField
      FieldName = 'name'
      Origin = 'name'
      Required = True
      Size = 100
    end
    object cdsConsultdescription: TWideStringField
      FieldName = 'description'
      Origin = 'description'
      Required = True
      Size = 255
    end
    object cdsConsultstart_date: TDateField
      FieldName = 'start_date'
      Origin = 'start_date'
      Required = True
    end
    object cdsConsultend_date: TDateField
      FieldName = 'end_date'
      Origin = 'end_date'
      Required = True
    end
    object cdsConsultstatus: TStringField
      FieldName = 'status'
      Origin = 'status'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
end

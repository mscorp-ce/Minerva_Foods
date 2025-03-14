object frmFiltros: TfrmFiltros
  Left = 0
  Top = 0
  Caption = 'Filters'
  ClientHeight = 121
  ClientWidth = 719
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  Position = poScreenCenter
  OnKeyPress = FormKeyPress
  TextHeight = 13
  object pnlControl: TPanel
    Left = 0
    Top = 0
    Width = 719
    Height = 121
    Align = alClient
    BevelOuter = bvLowered
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 0
    StyleElements = [seFont, seBorder]
    object grbFilters: TGroupBox
      Left = 1
      Top = 1
      Width = 717
      Height = 120
      Align = alTop
      Caption = 'Filter'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      StyleElements = [seFont, seBorder]
      object lblOrder: TLabel
        Left = 5
        Top = 65
        Width = 32
        Height = 13
        Caption = 'Order'
      end
      object lblFilterBy: TLabel
        Left = 5
        Top = 17
        Width = 46
        Height = 13
        Caption = 'Filter by'
      end
      object lblFilterValue: TLabel
        Left = 362
        Top = 18
        Width = 63
        Height = 13
        Caption = 'Filter Value'
      end
      object lblOperator: TLabel
        Left = 185
        Top = 17
        Width = 51
        Height = 13
        Caption = 'Operator'
      end
      object spbConfirmar: TSpeedButton
        Left = 591
        Top = 72
        Width = 120
        Height = 42
        DisabledImageName = 'spbConfirm'
        Caption = '&Confirm'
        Glyph.Data = {
          4A1F0000424D4A1F000000000000360000002800000033000000330000000100
          180000000000141F0000120B0000120B00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF202020FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF202020FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF202020FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFBFBFBFEFEFEFFFFFFFDFDFDFDFDFDFFFFFFFFFFFFFBFBFBFFFFFFFFFFFFFE
          FEFEFDFDFDFFFFFFFFFFFFFDFDFDFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFFFFFF
          FFFFFFFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF202020FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFDFDFDFFFFFFFFFFFFFDFDFDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFDFDFDFFFFFFFFFFFFFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFCFCFCFFFFFFFFFFFFF9F9F9FBFBFBFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF202020FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
          FEFFFFFFFFFFFFFDFDFDFFFFFFFFFFFFFDFDFDFFFFFFFCFCFCFFFFFFFFFFFFFE
          FEFEFEFEFEFCFCFCFBFBFBFBFBFBFFFFFFFFFFFFFDFDFDFEFEFEFFFFFFFFFFFF
          FDFDFDFBFBFBFAFAFAFFFFFFFDFDFDF7F7F7FFFFFFFFFFFFFFFFFFFDFDFDFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF20
          2020FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAFFFFFF
          FCFCFCFBFBFBFFFFFFFFFFFFFCFCFCFEFEFEFFFFFFFFFFFFFDFDFDFDFDFDFFFF
          FFFEFEFEFEFEFEFFFFFFFEFEFEFEFEFEFFFFFFFFFFFFFEFEFEF9F9F9FDFDFDFF
          FFFFFFFFFFF8F8F8FDFDFDFFFFFFFDFDFDF8F8F8FFFFFFFEFEFEFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF202020FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFE
          FEFEFFFFFFFDFDFDFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCE4E4E4
          AEAEAE7D7D7D6666665D5D5D5858586262627E7E7EAAAAAADEDEDEFFFFFFFDFD
          FDFFFFFFFDFDFDFCFCFCFFFFFFFEFEFEFEFEFEFDFDFDFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF202020FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFC
          FCFAFAFAFEFEFEFFFFFFFAFAFAFFFFFFEDEDED9898983A3A3A0C0C0C06060603
          03031616162020202424241515150101010202021E1E1E3D3D3DA7A7A7E4E4E4
          FFFFFFFFFFFFFEFEFEFEFEFEFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF202020FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F9F9F9FEFEFEFFFFFFFCFCFCFFFFFF
          FFFFFFF6F6F6FFFFFF9191912727270303031E1E1E656565B0B0B0D5D5D5F5F5
          F5F3F3F3F1F1F1EBEBEBD5D5D5A6A6A6676767373737040404222222989898F9
          F9F9FFFFFFFEFEFEFCFCFCFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF202020FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFEFEFEFDFDFDFFFFFFF6F6F6CE
          CECE444444070707282828A6A6A6F5F5F5FEFEFEFCFCFCFFFFFFFEFEFEFFFFFF
          FEFEFEFCFCFCFDFDFDFEFEFEF8F8F8F0F0F0A3A3A33E3E3E0D0D0D4D4D4DC9C9
          C9FFFFFFF6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF202020FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFFFFFFF6F6F6FFFFFFABABAB2121210505
          058F8F8FFAFAFAFFFFFFFBFBFBFFFFFFFEFEFEFFFFFFFDFDFDFFFFFFFFFFFFFE
          FEFEFFFFFFFFFFFFFFFFFFFBFBFBFFFFFFF9F9F98B8B8B1111111F1F1FBFBFBF
          FAFAFAFEFEFEFFFFFFFFFFFFFAFAFAFFFFFFFDFDFDFAFAFAFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF202020FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFF7F7F7FFFFFFABABAB0F0F0F262626BDBDBDF6F6F6
          FFFFFFFCFCFCFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFCFC
          FCFDFDFDFFFFFFFFFFFFFFFFFFFBFBFBFBFBFBCFCFCF222222030303C3C3C3FF
          FFFFF8F8F8F9F9F9FFFFFFFDFDFDFDFDFDFFFFFFFEFEFEFFFFFFFFFFFFFFFFFF
          FFFFFF202020FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFBFBFBFEFEFEFFFFFFC4C4C4060606303030D9D9D9F3F3F3FFFFFFFCFCFCFF
          FFFFFFFFFFFEFEFEFFFFFFFCFCFCFDFDFDFEFEFEFFFFFFFFFFFFFCFCFCFCFCFC
          FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCECECE2A2A2A0D0D0DC2C2C2FFFF
          FFFAFAFAFFFFFFFEFEFEFFFFFFFFFFFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFF20
          2020FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAFCFCFC
          FFFFFFD6D6D62A2A2A111111CBCBCBFFFFFFFFFFFFFFFFFFF8F8F8FFFFFFFDFD
          FDF9F9F9FFFFFFFFFFFFFCFCFCFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFF6F6F6FFFFFFF0F0F0FFFFFFD5D5D50808082D2D2DEBEBEBFFFFFF
          F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF202020FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFFFFFF72
          7272000000BBBBBBFFFFFFEEEEEEFFFFFFFFFFFFF8F8F8FFFFFFFCFCFCFFFFFF
          FFFFFFFAFAFAFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFFF
          FFFAFAFAFFFFFFFFFFFFEEEEEEFFFFFFB6B6B60606066F6F6FFFFFFFF8F8F8FF
          FFFFFEFEFEFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF202020FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8BEBEBE0505056F6F
          6FFCFCFCF8F8F8FFFFFFFDFDFDFFFFFFFFFFFFFFFFFFFAFAFAFFFFFFF9F9F9FF
          FFFFFFFFFFFFFFFFFFFFFFFCFCFCFDFDFDFFFFFFFFFFFFFBFBFBFFFFFFFFFFFF
          F4F4F4FFFFFFFFFFFFFDFDFDFFFFFF717171000000D8D8D8FFFFFFFFFFFFFDFD
          FDFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFF202020FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFEFEFE676767050505EAEAEAFEFEFE
          FFFFFFF8F8F8FBFBFBFFFFFFFAFAFAF4F4F4FDFDFDFFFFFFCFCFCFF2F2F2F3F3
          F3FDFDFDFFFFFFFDFDFDFBFBFBFFFFFFFFFFFFFCFCFCFFFFFFFAFAFAFFFFFFFC
          FCFCFFFFFFFFFFFFFFFFFFCCCCCC0C0C0C7B7B7BFBFBFBFFFFFFFEFEFEFFFFFF
          FCFCFCFFFFFFFFFFFFFFFFFFFFFFFF202020FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFD1D1D10F0F0F5D5D5DF7F7F7FAFAFAFDFDFDFF
          FFFFFFFFFFFFFFFFFBFBFBFCFCFCFFFFFFC6C6C6242424181818DFDFDFF4F4F4
          FFFFFFFFFFFFFDFDFDFFFFFFFFFFFFFDFDFDFFFFFFFFFFFFFEFEFEFFFFFFFEFE
          FEFEFEFEFAFAFAFFFFFF5757571A1A1AD4D4D4FFFFFFFEFEFEFEFEFEFEFEFEFF
          FFFFFFFFFFFFFFFFFFFFFF202020FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF898989020202C5C5C5F9F9F9FCFCFCFEFEFEFFFFFFFFFF
          FFFDFDFDF5F5F5FFFFFFD3D3D30000002828280F0F0F151515D1D1D1FFFFFFFF
          FFFFFFFFFFFBFBFBFFFFFFFDFDFDF9F9F9FEFEFEFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFEFEFEB5B5B50505058E8E8EFFFFFFFFFFFFFEFEFEFEFEFEFFFFFFFFFF
          FFFFFFFFFFFFFF202020FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFBFBFB4D4D4D272727F5F5F5FFFFFFFFFFFFFFFFFFF7F7F7FFFFFFFCFCFC
          FFFFFFBBBBBB121212151515CACACAE1E1E10D0D0D141414DADADAFFFFFFFFFF
          FFFFFFFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFFFFFFFFFFFFFF
          FFFFEFEFEF1C1C1C5F5F5FFAFAFAFEFEFEFCFCFCFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF202020FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFB
          FB1A1A1A555555FFFFFFFCFCFCFEFEFEFFFFFFFEFEFEF8F8F8FFFFFFAEAEAE1B
          1B1B0F0F0FD6D6D6FFFFFFF8F8F8CBCBCB252525222222D3D3D3F5F5F5FFFFFF
          FFFFFFFDFDFDFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFF
          FF3A3A3A2C2C2CF4F4F4FFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF20
          2020FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6E6E6090909
          818181FFFFFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFAEAEAE171717111111D5D5
          D5FFFFFFFFFFFFF3F3F3FFFFFFC3C3C31313131C1C1CDADADAFFFFFFFCFCFCFF
          FFFFFDFDFDFCFCFCFCFCFCFFFFFFFFFFFFFEFEFEFCFCFCFDFDFDFBFBFB646464
          151515EAEAEAFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF202020FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5D5D50A0A0A9D9D9DFD
          FDFDFFFFFFFFFFFFFAFAFAFBFBFBB1B1B1191919111111D0D0D0FFFFFFFFFFFF
          F6F6F6FDFDFDFFFFFFFAFAFACFCFCF0D0D0D131313CCCCCCFFFFFFFFFFFFFEFE
          FEFEFEFEFEFEFEFFFFFFFEFEFEFDFDFDFDFDFDFDFDFDFAFAFA9191910C0C0CD6
          D6D6F4F4F4FEFEFEFDFDFDFFFFFFFFFFFFFFFFFFFFFFFF202020FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCDCDC0B0B0B9F9F9FFFFFFFFCFC
          FCFFFFFFFFFFFFFFFFFF5A5A5A0F0F0FE2E2E2FFFFFFF9F9F9F9F9F9FFFFFFFF
          FFFFFCFCFCFFFFFFF3F3F3DFDFDF1111111C1C1CCECECEFDFDFDFFFFFFFFFFFF
          FFFFFFFEFEFEFCFCFCFEFEFEFFFFFFFEFEFEFFFFFF9D9D9D040404CECECEF9F9
          F9FFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFF202020FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFDBDBDB060606959595FFFFFFFDFDFDFFFFFF
          FFFFFFFDFDFDD3D3D3C4C4C4FFFFFFF4F4F4FFFFFFFCFCFCFFFFFFFFFFFFFFFF
          FFF4F4F4FDFDFDF1F1F1C6C6C60F0F0F0D0D0DDADADAF5F5F5FFFFFFFFFFFFFF
          FFFFFCFCFCFFFFFFFFFFFFFCFCFCFFFFFF878787040404D9D9D9FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF202020FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFD7D7D7070707888888FFFFFFFCFCFCFFFFFFFCFCFCFF
          FFFFFFFFFFFCFCFCFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFBFBFBF181818111111E3E3E3F6F6F6FFFFFFFFFFFFFDFD
          FDFFFFFFFFFFFFF7F7F7FDFDFD7474740D0D0DE5E5E5FFFFFFF7F7F7FEFEFEFF
          FFFFFFFFFFFFFFFFFFFFFF202020FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFF0F0F02424244D4D4DFCFCFCFFFFFFFFFFFFFEFEFEFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFF
          FFFFFEFEFEFFFFFFC0C0C01C1C1C101010CFCFCFFFFFFFF9F9F9FFFFFFFFFFFF
          FFFFFFFDFDFDFDFDFD4444443A3A3AF2F2F2FCFCFCFFFFFFFCFCFCFFFFFFFFFF
          FFFFFFFFFFFFFF202020FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFDFDFD4D4D4D151515FFFFFFFFFFFFF6F6F6FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFFFFFFFBFB
          FBFFFFFFFFFFFFC3C3C30E0E0E0C0C0CDCDCDCFFFFFFF0F0F0FFFFFFFCFCFCFF
          FFFFE9E9E91B1B1B5F5F5FFAFAFAFFFFFFFFFFFFFDFDFDFFFFFFFFFFFFFFFFFF
          FFFFFF202020FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF989898000000C2C2C2FCFCFCFDFDFDFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFFFFFFEFEFEFFFFFFFFFFFFFBFBFB
          FFFFFFFFFFFFCDCDCD212121090909BCBCBCFFFFFFF7F7F7FFFFFFF7F7F7AFAF
          AF0101019A9A9AFFFFFFFDFDFDFFFFFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFF20
          2020FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDDDDDDD
          1414145C5C5CFFFFFFFFFFFFFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFDFDFDF6F6F6F9
          F9F9FFFFFFAEAEAE1919196C6C6CFBFBFBFFFFFFFBFBFBFFFFFF505050232323
          D2D2D2FFFFFFFAFAFAFCFCFCFDFDFDFEFEFEFFFFFFFFFFFFFFFFFF663A44FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFBFBFB53535315
          1515DEDEDEFFFFFFFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFEFEFEFFFFFFFFFFFFFFFFFFF9F9
          F9FFFFFFE6E6E6BABABAFFFFFFFFFFFFFFFFFFD3D3D3010101747474F6F6F6FD
          FDFDFCFCFCFDFDFDFFFFFFFEFEFEFFFFFFFFFFFFFFFFFF63756DFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBABABA0B0B0B6868
          68FDFDFDFFFFFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFCFCFCFBFBFBFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFBFBFBFFFFFFFFFFFF
          F5F5F5FFFFFFFFFFFFFAFAFAFCFCFC4444440E0E0EC4C4C4FFFFFFFEFEFEFFFF
          FFFFFFFFFFFFFFFDFDFDFFFFFFFFFFFFFFFFFF745265FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFDFDFD6565651010109F9F9F
          F8F8F8FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFCFCFCFCFCFCFFFFFFFEFEFEFDFDFDFFFFFFFDFDFDFFFFFFFFFFFFF3F3F3FF
          FFFFF6F6F6FFFFFF9494940909097F7F7FF6F6F6FFFFFFFDFDFDFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF744576FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFAFAFAFFFFFFF8F8F8E6E6E6161616151515E6E6E6FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE
          FBFBFBFFFFFFFEFEFEFDFDFDFFFFFFFFFFFFFFFFFFF7F7F7FFFFFFF8F8F8FFFF
          FFCBCBCB020202373737EFEFEFFFFFFFFAFAFAFBFBFBFDFDFDFFFFFFFDFDFDFF
          FFFFFFFFFFFFFFFFFFFFFF32313AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFEFEFEFBFBFBFFFFFFC2C2C2181818181818E2E2E2FAFA
          FAFFFFFFFFFFFFFBFBFBFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFF9F9F9F9F9F9FFFFFFF4F4F4FFFFFFCBCBCB1D1D1D
          202020CACACAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF766564FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFEFEFEFEFEFEFFFFFFF5F5F5FFFFFFAAAAAA0B0B0B1B1B1BCBCBCBF4F4F4
          FFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFFFFFFFFFFFFFEFEFEFDFDFDFFFFFFFDFD
          FDF9F9F9FDFDFDFFFFFFFFFFFFFAFAFAFFFFFFBDBDBD171717181818B8B8B8FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF66726FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFDFDFDFFFFFFFFFFFFFEFEFEACACAC1E1E1E121212919191F2F2F2FF
          FFFFFAFAFAFEFEFEFDFDFDFBFBFBFEFEFEFBFBFBFCFCFCFFFFFFFFFFFFFFFFFF
          FEFEFEFDFDFDFEFEFEF4F4F4868686070707262626B9B9B9FFFFFFF9F9F9FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF66
          3A6CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFCFCFC
          FFFFFFFFFFFFF3F3F3FFFFFFFFFFFFC6C6C63636361717173A3A3AA2A2A2F1F1
          F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAF9F9F9FEFEFEFCFCFCF4
          F4F49D9D9D343434000000434343C6C6C6FEFEFEF9F9F9FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF202020FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFFFFFFFD
          FDFDFFFFFFFFFFFFF5F5F5FFFFFFFFFFFF8787872424240D0D0D2222225E5E5E
          A8A8A8D3D3D3E7E7E7E4E4E4E3E3E3E2E2E2D0D0D09F9F9F5858582121210101
          01292929A4A4A4FFFFFFFFFFFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F7773FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9FFFFFFFFFF
          FFFBFBFBFFFFFFF9F9F9FFFFFFFEFEFEE9E9E9A9A9A94E4E4E13131302020200
          00001616161414141919191818180606060000001E1E1E4D4D4DAEAEAEE6E6E6
          FFFFFFF9F9F9FFFFFFFFFFFFF7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF394638FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAFFFFFFFFFFFFFBFBFBFDFDFDFFFFFF
          FCFCFCFCFCFCFBFBFBFFFFFFFEFEFEFCFCFCFAFAFAE5E5E5B5B5B58888887171
          715D5D5D585858707070929292B4B4B4DDDDDDFFFFFFFFFFFFFFFFFFFEFEFEFA
          FAFAFEFEFEFFFFFFFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3A6C69FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFCFCFCFFFFFFFAFAFAFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFFFFFFFFFFFFFCFC
          FCFFFFFFFFFFFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF4D4D3AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF696964FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF226874FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF70
          3A43FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF446573FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF726970FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF202020FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6D2FFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF202020}
        OnClick = spbConfirmarClick
      end
      object cbxFields: TComboBox
        Left = 5
        Top = 34
        Width = 174
        Height = 22
        Style = csOwnerDrawFixed
        TabOrder = 0
      end
      object edtFilterValue: TEdit
        Left = 362
        Top = 35
        Width = 351
        Height = 21
        TabOrder = 2
      end
      object cbxOrder: TComboBox
        Left = 5
        Top = 82
        Width = 174
        Height = 22
        Style = csOwnerDrawFixed
        TabOrder = 3
      end
      object rdgAttributes: TRadioGroup
        Left = 183
        Top = 71
        Width = 233
        Height = 40
        Caption = 'Attributes'
        Columns = 2
        ItemIndex = 0
        Items.Strings = (
          'Growing'
          'Descending')
        TabOrder = 4
      end
      object cbxOperator: TComboBox
        Left = 185
        Top = 34
        Width = 174
        Height = 22
        Style = csOwnerDrawFixed
        TabOrder = 1
        Items.Strings = (
          'Equal a'
          'Greater than'
          'Better than'
          'Greater than or equal'
          'Better or equal'
          'Different'
          'Starts with'
          'Ends with'
          'Contains')
      end
    end
  end
end

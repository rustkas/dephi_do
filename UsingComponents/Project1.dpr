program Project1;

uses
  Vcl.Forms,
  EscapedButton in 'EscapedButton.pas' {FEscapedButton},
  MyLabel in 'MyLabel.pas' {FLabel},
  MyEdit in 'MyEdit.pas' {FTEdit},
  MyMemo in 'MyMemo.pas' {FMemo},
  MyCheckBox in 'MyCheckBox.pas' {FCheckBox},
  MyPanelExample1 in 'MyPanelExample1.pas' {FPanelExample1},
  MyPanel in 'MyPanel.pas' {FPanel},
  MyRadioButton in 'MyRadioButton.pas' {FRadioButton},
  MyListBox in 'MyListBox.pas' {FListBox},
  MyListBoxMultiSelect in 'MyListBoxMultiSelect.pas' {FListBoxMultiSelect},
  MyComboBox in 'MyComboBox.pas' {FComboBox},
  MyComboBoxStyles in 'MyComboBoxStyles.pas' {FComboBoxStyles},
  MyScrollBar in 'MyScrollBar.pas' {FScrollBar},
  MyGroupBox in 'MyGroupBox.pas' {FGroupBox},
  MyRadioGroup in 'MyRadioGroup.pas' {FRadioGroup},
  MyActionList in 'MyActionList.pas' {FActionList};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFActionList, FActionList);
  Application.CreateForm(TFRadioGroup, FRadioGroup);
  Application.CreateForm(TFGroupBox, FGroupBox);
  Application.CreateForm(TFScrollBar, FScrollBar);
  Application.CreateForm(TFComboBoxStyles, FComboBoxStyles);
  Application.CreateForm(TFComboBox, FComboBox);
  Application.CreateForm(TFListBoxMultiSelect, FListBoxMultiSelect);
  Application.CreateForm(TFListBox, FListBox);
  Application.CreateForm(TFRadioButton, FRadioButton);
  Application.CreateForm(TFPanel, FPanel);
  Application.CreateForm(TFPanelExample1, FPanelExample1);
  Application.CreateForm(TFCheckBox, FCheckBox);
  Application.CreateForm(TFMemo, FMemo);
  Application.CreateForm(TFTEdit, FTEdit);
  Application.CreateForm(TFLabel, FLabel);
  Application.CreateForm(TFEscapedButton, FEscapedButton);
  Application.Run;
end.

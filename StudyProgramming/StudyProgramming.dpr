program StudyProgramming;

uses
  Vcl.Forms,
  My_while_loop in 'My_while_loop.pas' {F_while},
  MyFor_loop in 'MyFor_loop.pas' {F_For},
  My_repeat_do_loop in 'My_repeat_do_loop.pas' {F_repeat_do},
  My_continue in 'My_continue.pas' {F_continue},
  My_break in 'My_break.pas' {F_break},
  My_if in 'My_if.pas' {F_if},
  My_Length in 'My_Length.pas' {F_Length},
  My_Copy in 'My_Copy.pas' {C_copy},
  My_Editor1 in 'My_Editor1.pas' {F_delete_pos},
  My_Exeptions in 'My_Exeptions.pas' {F_Exeption1},
  My_Exeptions2 in 'My_Exeptions2.pas' {F_exeption2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TF_exeption2, F_exeption2);
  Application.CreateForm(TF_Exeption1, F_Exeption1);
  Application.CreateForm(TC_copy, C_copy);
  Application.CreateForm(TF_Length, F_Length);
  Application.CreateForm(TF_if, F_if);
  Application.CreateForm(TF_break, F_break);
  Application.CreateForm(TF_continue, F_continue);
  Application.CreateForm(TF_repeat_do, F_repeat_do);
  Application.CreateForm(TF_while, F_while);
  Application.CreateForm(TF_For, F_For);
  Application.CreateForm(TF_delete_pos, F_delete_pos);
  Application.Run;
end.

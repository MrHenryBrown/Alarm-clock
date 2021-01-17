unit Module;

interface

uses
  Windows, SysUtils, Forms, Dialogs, StdCtrls, ComCtrls, Controls, Classes, ExtCtrls;

type
  TForm1 = class(TForm)
    Timer1: TTimer;
    Label1: TLabel;
    Label2: TLabel;
    Timer2: TTimer;
    Edit1: TEdit;
    Label3: TLabel;
    UpDown1: TUpDown;
    Label4: TLabel;
    Edit2: TEdit;
    UpDown2: TUpDown;
    Label5: TLabel;
    Edit3: TEdit;
    UpDown3: TUpDown;
    Label6: TLabel;
    Button1: TButton;
    Button2: TButton;
    Label8: TLabel;
    procedure Timer1Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  t, t1, t2, t3, t4, t5, a, a1, a2: TTime;  //переменые
implementation

{$R *.dfm}

procedure TForm1.Timer1Timer(Sender: TObject);
begin
Label1.Caption:='“екуща€ дата: ' + datetostr(date);
Label2.Caption:='“екущее врем€: ' + timetostr(time);
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
//получаем дату и врем€
t:=time;
a:=strtotime(edit1.Text);  //получаем кол-во чисов
a1:=strtotime(edit2.Text); //получаем кол-во минут
a2:=strtotime(edit3.Text); //получаем кол-во секунд
t1:=a * 3600; //получаем кол-во секунд в  установленых часах
t2:=a1 * 60; //получаем кол-во секунд в установленых минутах
t3:=t1 + t2 + a2;   //cкладываем
t4:=t + (t3 / (24*3600));  //переводим всЄ в врем€ как в системе
Label6.Caption:='”становленое врем€: ' + FormatDateTime('hh:mm:ss',t4); //показываем установленое
t5:=strtotime(FormatDateTime('hh:mm:ss',t4));
Label8.Caption:='ќсталось: ' + timetostr(t5-t); //показываем сколько осталось
Button2.Enabled:=true; //что-то с кнопкой
Timer2.Enabled:=true;
//очищаем пол€
Edit1.Text:='0';
Edit2.Text:='0';
Edit3.Text:='0';
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
if FileExists(ExtractFilePath(Application.Exename) + 'Set.ini') then
begin
Timer2.Enabled:=false;
DeleteFile(ExtractFilePath(Application.Exename) + 'Set.ini');
Label6.Caption:='”становленое врем€: ';
Label8.Caption:='ќсталось: ';
end;
end;

procedure TForm1.Timer2Timer(Sender: TObject);
var
h, h1, h2: TTime;
begin
h:=time;
h1:=t5;
h2:=h- h1;
Label8.Caption:='ќсталось: ' + timetostr(h2);
if h2=0 then
ShowMessage('¬рем€ вышло');
end;

end.

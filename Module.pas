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
  t, t1, t2, t3, t4, t5, a, a1, a2: TTime;  //���������
implementation

{$R *.dfm}

procedure TForm1.Timer1Timer(Sender: TObject);
begin
Label1.Caption:='������� ����: ' + datetostr(date);
Label2.Caption:='������� �����: ' + timetostr(time);
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
//�������� ���� � �����
t:=time;
a:=strtotime(edit1.Text);  //�������� ���-�� �����
a1:=strtotime(edit2.Text); //�������� ���-�� �����
a2:=strtotime(edit3.Text); //�������� ���-�� ������
t1:=a * 3600; //�������� ���-�� ������ �  ������������ �����
t2:=a1 * 60; //�������� ���-�� ������ � ������������ �������
t3:=t1 + t2 + a2;   //c���������
t4:=t + (t3 / (24*3600));  //��������� �� � ����� ��� � �������
Label6.Caption:='������������ �����: ' + FormatDateTime('hh:mm:ss',t4); //���������� ������������
t5:=strtotime(FormatDateTime('hh:mm:ss',t4));
Label8.Caption:='��������: ' + timetostr(t5-t); //���������� ������� ��������
Button2.Enabled:=true; //���-�� � �������
Timer2.Enabled:=true;
//������� ����
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
Label6.Caption:='������������ �����: ';
Label8.Caption:='��������: ';
end;
end;

procedure TForm1.Timer2Timer(Sender: TObject);
var
h, h1, h2: TTime;
begin
h:=time;
h1:=t5;
h2:=h- h1;
Label8.Caption:='��������: ' + timetostr(h2);
if h2=0 then
ShowMessage('����� �����');
end;

end.

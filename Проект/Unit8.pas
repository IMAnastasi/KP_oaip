//���� "������ ������"
unit Unit8;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Imaging.jpeg, System.ImageList, Vcl.ImgList, ShellAPI;

type
  TForm8 = class(TForm)
    Image1: TImage;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    RadioGroup1: TRadioGroup;
    Image2: TImage;
    Label1: TLabel;
    Button1: TButton;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    Image10: TImage;
    Image11: TImage;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;
  f: text;
  s: string;
  Nvern, ball,index,i: integer;

implementation

{$R *.dfm}

uses Unit1, Unit2, Unit3, Unit4, Unit5, Unit6, Unit7;

procedure TForm8.FormCreate(Sender: TObject);
begin
i:=0;
 AssignFile( f, ExtractFilePath(ParamStr(0))+'����\���� �� �������.txt');
 reset(f); //��������� ���� ��� ������
readln(f,s); //��������� ������ ������ �� �����
ball:=0; //���������� ���������� ������ 0
repeat
if (s[1]='-') then begin //���� ������ ������ ������ �-� ������ ��� ������
delete(s,1,1);
RadioGroup1.Caption:=s;
end
else if s[1]='*' then begin //���� ���� ������ �*� ������ ��� ����� ������� ������
delete(s,1,1);
Nvern:=StrToInt(s);
end
else RadioGroup1.Items.Add(s); //����� ��� ������� ������
readln(f,s); //��������� ��������� ������ �� �����
until (s[1]='-') or (Eof(f));
end;


procedure TForm8.Button1Click(Sender: TObject);
begin
if (RadioGroup1.ItemIndex>-1) and (not Eof(f)) then begin
if RadioGroup1.ItemIndex = Nvern-1 then ball:=ball+1; //���� ��������� ������� �������������
RadioGroup1.Items.Clear; //������ ������� ������ �� ���� ������������
Repeat
 //�������� ������� ��� ������� ����������
if i=1 then
  image11.Visible:=false;
if i=2 then
  image10.Visible:=false;
if i=3 then
  image9.Visible:=false;
if i=4 then
  image8.Visible:=false;
if i=5 then
  image7.Visible:=false;
if i=6 then
  image6.Visible:=false;
if i=7 then
  image5.Visible:=false;
if i=8 then
  image4.Visible:=false;
if i=9 then
  image3.Visible:=false;
 //� ��������� ���� ��� ���������� �������
if (s[1]='-') then begin
delete(s,1,1);
RadioGroup1.Caption:=s;
i:=i+1;
end
else if s[1]='*' then begin
delete(s,1,1);
Nvern:=StrToInt(s);
end
else RadioGroup1.Items.Add(s);
readln(f,s);
Label1.Caption:=s;
until (s[1]='-') or (Eof(f));
end
//���� ����� ����� ���������, ������ ������� �����������
Else if Eof(f) then begin
delete(s,1,1);
Nvern:=StrToInt(s);
if RadioGroup1.ItemIndex = Nvern-1 then ball:=ball+1;
label1.Visible:=true;
Label1.Caption:='��� ���������: '+IntToStr(ball)+' '; //����� ���������� ������
CloseFile(f);
Button1.Enabled:=False;//������ ����������� �����������
end;
end;

procedure TForm8.N2Click(Sender: TObject);
begin
form8.close;
form7.show;
end;

procedure TForm8.N3Click(Sender: TObject);
begin
form8.close;
form4.show;
end;

procedure TForm8.N4Click(Sender: TObject);
begin
 form8.close;
 form5.show;
end;

procedure TForm8.N6Click(Sender: TObject);
begin
form8.close;
form6.show;
end;

procedure TForm8.N7Click(Sender: TObject);
begin
ShellExecute(0, PChar('Open'), PChar ('�������.chm'), nil, nil, SW_SHOW);
end;

end.

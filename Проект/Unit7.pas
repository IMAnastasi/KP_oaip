//������� �����
unit Unit7;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.Menus, Vcl.StdCtrls, ShellAPI;

type
  TForm7 = class(TForm)
    Image1: TImage;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    Button1: TButton;
    Button3: TButton;
    Button2: TButton;
    Button4: TButton;
    Button5: TButton;
    procedure N7Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}

uses Unit1, Unit2, Unit3, Unit4, Unit5, Unit6;
//������� �� ����� � ������
procedure TForm7.Button1Click(Sender: TObject);
begin
form7.hide;
form3.show;
end;
//������� �� ����� "�������� ��"
procedure TForm7.Button2Click(Sender: TObject);
begin
form7.hide;
form5.show;
end;
//  ������� �� ����� "��� ��������� ��"
procedure TForm7.Button3Click(Sender: TObject);
begin
form7.hide;
form4.show;
end;
//������� �� ����� "����"
procedure TForm7.Button4Click(Sender: TObject);
begin
form7.hide;
form6.show;
end;
 //�������� �������
procedure TForm7.Button5Click(Sender: TObject);
begin
form1.close;
close;
end;

procedure TForm7.N2Click(Sender: TObject);
begin
form7.hide;
form3.show;
end;

procedure TForm7.N3Click(Sender: TObject);
begin
form7.hide;
form4.show;
end;

procedure TForm7.N4Click(Sender: TObject);
begin
form7.hide;
form5.show;
end;

procedure TForm7.N5Click(Sender: TObject);
begin
form7.hide;
form6.show;
end;
//�������
procedure TForm7.N6Click(Sender: TObject);
begin
ShellExecute(0, PChar('Open'), PChar ('�������.chm'), nil, nil, SW_SHOW);
end;

procedure TForm7.N7Click(Sender: TObject);
begin
form1.close;
close;
end;

end.

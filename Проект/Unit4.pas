//����� "��� ��������� ��"
unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Menus, Vcl.OleCtrls, SHDocVw, ShellAPI;

type
  TForm4 = class(TForm)
    Image1: TImage;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    WebBrowser1: TWebBrowser;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

uses Unit1, Unit2, Unit3, Unit5, Unit6, Unit7;

//�� ������ �� ������ �������� ���-��������� � ������� webbrowser
procedure TForm4.Button1Click(Sender: TObject);
begin
webbrowser1.Navigate(ExtractFilePath(ParamStr(0))+'web\��� ��������� ��\�������� ��.htm');
end;

//�� ������ �� ������ �������� ���-��������� � ������� webbrowser
procedure TForm4.Button2Click(Sender: TObject);
begin
webbrowser1.Navigate(ExtractFilePath(ParamStr(0))+'web\��� ��������� ��\������������.htm');
end;

//�� ������ �� ������ �������� ���-��������� � ������� webbrowser
procedure TForm4.Button3Click(Sender: TObject);
begin
webbrowser1.Navigate(ExtractFilePath(ParamStr(0))+'web\��� ��������� ��\������������.htm');
end;

//�� ������ �� ������ �������� ���-��������� � ������� webbrowser
procedure TForm4.Button4Click(Sender: TObject);
begin
webbrowser1.Navigate(ExtractFilePath(ParamStr(0))+'web\��� ��������� ��\���������� ��������������.htm');
end;
//�� ������ �� ������ �������� ���-��������� � ������� webbrowser
procedure TForm4.Button5Click(Sender: TObject);
begin
webbrowser1.Navigate(ExtractFilePath(ParamStr(0))+'web\��� ��������� ��\���������� �����������.htm');
end;
//������� �� ������� �����
procedure TForm4.N2Click(Sender: TObject);
begin
form7.show;
form4.close;
end;
//������� �� ����� � ������
procedure TForm4.N3Click(Sender: TObject);
begin
form3.show;
form4.close;
end;
//������� �� ����� "�������� ��"
procedure TForm4.N4Click(Sender: TObject);
begin
form5.show;
form4.close;
end;
//������� �� ����� "����"
procedure TForm4.N5Click(Sender: TObject);
begin
form6.show;
form4.close;
end;
//�������
procedure TForm4.N6Click(Sender: TObject);
begin
ShellExecute(0, PChar('Open'), PChar ('�������.chm'), nil, nil, SW_SHOW);
end;

end.

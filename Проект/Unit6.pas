//Форма "Игры"
unit Unit6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.Menus, ShellAPI;

type
  TForm6 = class(TForm)
    Image1: TImage;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

uses Unit1, Unit2, Unit3, Unit4, Unit5, Unit7, Unit10, Unit8, Unit9;
//при нажатии на кнопку переход на форму с тестом "Угадай эмоцию"
procedure TForm6.Button1Click(Sender: TObject);
begin
form8.show;
form6.close;
end;
//при нажатии на кнопку переход на форму с тестом "Твой тип личности по картинке"
procedure TForm6.Button2Click(Sender: TObject);
begin
form6.close;
form9.show;
end;
//при нажатии на кнопку переход на форму с игрой "Парные картинки"
procedure TForm6.Button3Click(Sender: TObject);
begin
 form6.close;
 form10.show;
end;
//переход на главную форму
procedure TForm6.N2Click(Sender: TObject);
begin
form7.show;
form6.close;
end;
//переход на форму с тестом
procedure TForm6.N3Click(Sender: TObject);
begin
form3.show;
form6.close;
end;
//переход на форму "Как развивать ЭИ"
procedure TForm6.N4Click(Sender: TObject);
begin
form4.show;
form6.close;
end;
//переход на форму "Элементы ЭИ"
procedure TForm6.N5Click(Sender: TObject);
begin
form6.close;
form5.show;
end;
//справка
procedure TForm6.N6Click(Sender: TObject);
begin
ShellExecute(0, PChar('Open'), PChar ('справка.chm'), nil, nil, SW_SHOW);
end;

end.

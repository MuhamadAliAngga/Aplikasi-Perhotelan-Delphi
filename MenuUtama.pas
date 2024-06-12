unit MenuUtama;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.OleCtnrs, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.StdCtrls, Vcl.Imaging.jpeg;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    Label1: TLabel;
    Image2: TImage;
    Image3: TImage;
    Label2: TLabel;
    Label3: TLabel;
    Panel2: TPanel;
    Image4: TImage;
    Label4: TLabel;
    Label5: TLabel;
    Button1: TButton;
    Button2: TButton;
    procedure Image1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Checkin;

procedure TForm1.Button1Click(Sender: TObject);
begin
Form1.close;
end;

procedure TForm1.Image1Click(Sender: TObject);
begin
form2.showmodal;
end;

end.

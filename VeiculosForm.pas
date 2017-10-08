unit VeiculosForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,VeiculosU,
  Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    edtmodelo: TEdit;
    edtmarca: TEdit;
    edtplaca: TEdit;
    edtpreco: TEdit;
    edtcor: TEdit;
    edtdesempenho: TEdit;
    memopcionais: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    memresposta: TMemo;
    btnenviar: TBitBtn;
    btnmostrar: TBitBtn;
    btnapagar: TBitBtn;
    Label12: TLabel;
    lbportas: TLabel;
    cbportas: TComboBox;
    cbtipo: TComboBox;
    dtpano: TDateTimePicker;
    cbcombustivel: TComboBox;
    cbestado: TComboBox;
    procedure btnenviarClick(Sender: TObject);
    procedure btnmostrarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnapagarClick(Sender: TObject);
    procedure cbtipoSelect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Veiculos: array of Tveiculos;
  Cveiculos: integer;
  tipo:string;
  qtd_portas: integer;

implementation

{$R *.dfm}

procedure TForm1.btnapagarClick(Sender: TObject);
begin
dtpano.date:=strtodate('01/01/2000');
edtmodelo.clear;
edtmarca.clear;
cbtipo.ItemIndex:=-1;
cbestado.ItemIndex:=-1;
edtplaca.clear;
edtpreco.clear;
edtcor.clear;
cbcombustivel.ItemIndex:=-1;
edtdesempenho.clear;
memopcionais.lines.clear;
tipo:='';
setlength(Veiculos,0);
Cveiculos:=0;
memresposta.lines.clear;
end;

procedure TForm1.btnenviarClick(Sender: TObject);
begin
setlength(Veiculos,Cveiculos+1);
Veiculos[Cveiculos]:=Tveiculos.create;

Veiculos[Cveiculos].settipo(cbtipo.Text);
Veiculos[Cveiculos].setano(dtpano.date);
Veiculos[Cveiculos].setmodelo(edtmodelo.Text);
Veiculos[Cveiculos].setmarca(edtmarca.Text);
Veiculos[Cveiculos].setestado(cbestado.Text);
Veiculos[Cveiculos].setplaca(edtplaca.Text);
Veiculos[Cveiculos].setpreco(strtofloat(edtpreco.Text));
Veiculos[Cveiculos].setcor(edtcor.Text);
Veiculos[Cveiculos].setcombustivel(cbcombustivel.Text);
Veiculos[Cveiculos].setdesempenho(strtoint(edtdesempenho.Text));
Veiculos[Cveiculos].setopcionais(Tstringlist(memopcionais.Lines));
Veiculos[Cveiculos].setqtd_portas(strtoint(cbportas.Text));

{
Veiculos[Cveiculos]:=Tveiculos.create(tipo,strtoint(edtano.text),edtmodelo.text,edtmarca.text,edtestado.text,edtplaca.text,strtofloat(edtpreco.text),edtcor.text,edtcombustivel.text,strtoint(edtdesempenho.text),Tstringlist(memopcionais.Lines),qtd_portas);
}
Cveiculos:=Cveiculos+1;
cbtipo.ItemIndex:=-1;
dtpano.date:=strtodate('01/01/2000');
edtmodelo.clear;
edtmarca.clear;
cbestado.ItemIndex:=-1;
edtplaca.clear;
edtpreco.clear;
edtcor.clear;
cbcombustivel.ItemIndex:=-1;
edtdesempenho.clear;
memopcionais.lines.clear;
tipo:='';

end;




procedure TForm1.btnmostrarClick(Sender: TObject);
var
a,i:integer;
begin
for i := 0 to Cveiculos-1 do
  begin
memresposta.Lines.Add(Veiculos[i].gettipo());
memresposta.Lines.Add(datetostr(Veiculos[i].getano()));
memresposta.Lines.Add(Veiculos[i].getmodelo());
memresposta.Lines.Add(Veiculos[i].getmarca());
memresposta.Lines.Add(Veiculos[i].getestado());
memresposta.Lines.Add(Veiculos[i].getplaca());
memresposta.Lines.Add(floattostr(Veiculos[i].getpreco()));
memresposta.Lines.Add(Veiculos[i].getcor());
memresposta.Lines.Add(Veiculos[i].getcombustivel());
memresposta.Lines.Add(inttostr(Veiculos[i].getdesempenho()));
for a := 0 to memopcionais.Lines.Count-1 do
begin
memresposta.Lines.Add(string(Veiculos[i].getopcionais()[a]));
end;
memresposta.Lines.Add(inttostr(Veiculos[i].getqtd_portas()));
  end;
end;
procedure TForm1.cbtipoSelect(Sender: TObject);
begin
if cbtipo.text='carro' then
begin
 cbportas.Show;
 lbportas.Show;
end;
if cbtipo.Text='moto' then
begin
  cbportas.Hide;
  lbportas.Hide;
  qtd_portas:=0;
end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
Cveiculos:=0;
end;

end.

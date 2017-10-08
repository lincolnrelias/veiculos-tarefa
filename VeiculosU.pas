unit VeiculosU;

interface
uses System.classes,Vcl.dialogs,System.SysUtils;
type Tveiculos=class
  private
  tipo:string;
  ano:Tdate;
  modelo:string;
  marca:string;
  estado:string;
  placa:string;
  preço:real;
  cor:string;
  combustivel:string;
  desempenho:integer;
  opcionais:Tstringlist;
  qtd_portas:integer;
   public
    {$REGION 'Sets...'}
    procedure Settipo(vtipo : string);
    procedure setano(vano : Tdate);
    procedure Setmodelo(vmodelo : string);
    procedure Setmarca(vmarca : string);
    procedure Setestado(vestado : string);
    procedure Setplaca(vplaca : string);
    procedure Setpreco(vpreço : real);
    procedure Setcor(vcor : string);
    procedure Setcombustivel(vcombustivel : string);
    procedure Setdesempenho(vdesempenho : integer);
    procedure Setopcionais(vopcionais : Tstringlist);
    procedure Setqtd_portas(vqtd_portas : integer);
    {$ENDREGION}
    {$REGION 'Gets...'}
    function Gettipo(): string;
    function Getano(): Tdate;
    function Getmodelo(): string;
    function Getmarca(): string;
    function Getestado(): string;
    function Getplaca(): string;
    function Getpreco(): real;
    function Getcor(): string;
    function Getcombustivel(): string;
    function Getdesempenho(): integer;
    function Getopcionais(): Tstringlist;
    function Getqtd_portas(): integer;
    {$ENDREGION}
    {$REGION 'Constructors...'}
    constructor create();overload;
    constructor create(Ctipo:string;Cano:Tdate;Cmodelo:string;Cmarca:string;Cestado:string;Cplaca:string;Cpreco:real;Ccor:string;Ccombustivel:string;Cdesempenho:integer;Copcionais:Tstringlist;Cqtd_portas:integer);overload;
    {$ENDREGION}
end;

implementation
{$REGION 'procedures...'}
procedure Tveiculos.settipo(vtipo : string);
begin
  tipo:=vtipo;
end;
procedure Tveiculos.setano(vano : Tdate);
begin
  ano:=vano;
end;
procedure Tveiculos.setmodelo(vmodelo : string);
begin
  modelo:=vmodelo;
end;
procedure Tveiculos.setmarca(vmarca : string);
begin
  marca:=vmarca;
end;
procedure Tveiculos.setestado(vestado : string);
begin
  estado:=vestado;
end;
procedure Tveiculos.setplaca(vplaca : string);
begin
  placa:=vplaca;
end;
procedure Tveiculos.setpreco(vpreço : real);
begin
  preço:=vpreço;
end;
procedure Tveiculos.setcor(vcor : string);
begin
  cor:=vcor;
end;
procedure Tveiculos.setcombustivel(vcombustivel : string);
begin
  combustivel:=vcombustivel;
end;
procedure Tveiculos.setdesempenho(vdesempenho : integer);
begin
  desempenho:=vdesempenho;
end;
procedure Tveiculos.setopcionais(vopcionais : Tstringlist);
begin
  opcionais:=Tstringlist.Create;
  opcionais.assign(vopcionais);
end;
procedure Tveiculos.setqtd_portas(vqtd_portas : integer);
begin
  qtd_portas:=vqtd_portas;
end;
{$ENDREGION}
{$REGION 'functions...'}
function Tveiculos.gettipo(): string;
begin
  result:=tipo;
end;
function Tveiculos.getano(): Tdate;
begin
  result:=ano;
end;
function Tveiculos.getmodelo():string;
begin
  result:=modelo;
end;
function Tveiculos.getmarca():string;
begin
  result:=marca;
end;
function Tveiculos.getestado():string;
begin
  result:=estado;
end;
function Tveiculos.getplaca():string;
begin
  result:=placa;
end;
function Tveiculos.getpreco():real;
begin
  result:=preço;
end;
function Tveiculos.getcor():string;
begin
  result:=cor;
end;
function Tveiculos.getcombustivel():string;
begin
  result:=combustivel;
end;
function Tveiculos.getdesempenho():integer;
begin
  result:=desempenho;
end;
function Tveiculos.getopcionais():Tstringlist;
begin
  result:=opcionais;
end;
function Tveiculos.getqtd_portas():integer;
begin
  result:=qtd_portas;
end;
{$ENDREGION}
{$REGION 'constructor implementations...'}
constructor Tveiculos.create();
begin
  inherited create;
end;
constructor Tveiculos.create(Ctipo:string;Cano:Tdate;Cmodelo:string;Cmarca:string;Cestado:string;Cplaca:string;Cpreco:real;Ccor:string;Ccombustivel:string;Cdesempenho:integer;Copcionais:Tstringlist;Cqtd_portas:integer);
begin
  settipo(Ctipo);
  setano(Cano);
  setmodelo(Cmodelo);
  setmarca(Cmarca);
  setestado(Cestado);
  setplaca(Cplaca);
  setpreco(Cpreco);
  setcor(Ccor);
  setcombustivel(Ccombustivel);
  setdesempenho(Cdesempenho);
  setopcionais(Copcionais);
  setqtd_portas(Cqtd_portas);
end;
{$ENDREGION}
end.

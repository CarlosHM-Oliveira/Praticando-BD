create database Supermercado;
use Supermercado;
create table Cliente(
id_cliente integer primary key auto_increment,
nome_cliente varchar(250) not null,
cpf_cliente varchar(250) unique not null,
email_cliente varchar(255) unique,
rua_cliente varchar(250) not null,
numero_cliente varchar(150) not null,
bairro varchar(250) not null,
cidade varchar(250) not null,
estado char(2) not null
);


create table Produto(
id_produto integer primary key auto_increment,
descricao_produto varchar(255) not null,
valor_produto decimal(10) not null,
data_validade date not null,
fk_id_distribuidor integer
);
alter table Produto 
add constraint fk_id_distribuidor 
foreign key (fk_id_distribuidor)
references Distribuidor (id_distribuidor);


create table Distribuidor(
id_distribuidor integer primary key auto_increment,
nome varchar(250) not null,
cnpj_distribuidor varchar(25) not null
);


create table Compra(
id_compra integer primary key auto_increment,
data_compra date not null,
hora_compra time not null,
quantidade decimal not null,
fk_produto integer,
fk_caixa integer,
fk_cliente integer
);
alter table Compra
add constraint fk_produto
foreign key (fk_produto)
references Produto (id_produto);

alter table Compra
add constraint fk_caixa
foreign key (fk_caixa)
references Caixa (id_caixa);

alter table compra
add constraint fk_cliente
foreign key (fk_cliente)
references Cliente(id_cliente);

create table Caixa(
id_caixa integer primary key auto_increment,
data_caixa date not null,
hora_sangria time,
hora_abertura integer not null,
hora_fechamento integer not null,
fk_funcionario integer
);
alter table Caixa
add constraint fk_funcionario
foreign key (fk_funcionario)
references Funcionario (id_funcionario);

create table Funcionario(
id_funcionario integer primary key auto_increment,
nome_funcionario varchar(250) not null,
telefone_funcionario varchar(25) not null,
cpf_funcionario varchar(25) unique not null,
salario integer not null,
data_admissao date not null,
data_saida date not null
);



select*from Cliente;
select*from Produto;
select*from Distribuidor;
select*from Compra;
select*from Caixa;
Select*from Funcionario;

insert into Cliente(nome_cliente,cpf_cliente,email_cliente,rua_cliente,numero_cliente,bairro,cidade,estado)
values
("Breno Kevin de Paula",'436.412.347-19',"breno_depaula@sestito.com.br",'Rua Paracatu','234','Parque Imperial','São Paulo','SP'),
("Maya Tereza Moura",'029.552.779-08',"mayaterezamoura@danzarin.com.br",'Rua Barão de Vitória','276','Casa Grande','Diadema','SP'),
("Alessandra Hadassa Oliveira",'748.181.926-27',"alessandra-oliveira78@uniube.br",'Rua Arlindo Nogueira','859','Centro','Teresina','PI'),
("Renan Lorenzo Sales",'139.151.589-76',"renan_lorenzo_sales@taclog.com.br",'Rua Maria Luísa do Val Penteado','525','Cidade São Mateus','São Paulo','SP'),
("Melissa Clara Melo",'864.862.675-77',"melissa-melo93@libero.it",'Avenida Afonso Pena','644','Boa Viagem','Belo Horizonte','MG'),
("Valentina Laura Cavalcanti",'136.683.532-80',"valentina_cavalcanti@diebold.com",'Rua Serra de Bragança','484','Vila Gomes Cardim','São Paulo','SP'),
("Caroline Sueli Simone da Cruz",'250.788.186-00',"caroline_sueli_dacruz@publicarbrasil.com.br",'Praça da República','846','República','São Paulo','SP'),
("Lucas Manuel da Mata",'653.764.796-76',"lucas_damata@amplisat.com.br",'Rua Pereira Estéfano','628','Vila da Saúde','São Paulo','SP'),
("Letícia Cecília das Neves",'254.343.261-21',"leticia_cecilia_dasneves@gripoantonin.com",'Rua Cristiano Olsen','611','Jardim Sumaré','Araçatuba','SP'),
("Osvaldo Severino Vieira",'738.422.315-63',"osvaldoseverinovieira@eximiart.com.br",'Rodovia Raposo Tavares','284','Lageadinho','Cotia','SP'),
("Thiago Heitor Benjamin Fernandes",'265.315.489-75',"thiagoheitorfernandes@uol.om.br",'Rua Frederico Moura','839','Cidade Nova','Franca','SP'),
("Carolina Liz Figueiredo",'024.322.618-79',"carolina_figueiredo@inforgel.com",'Avenida São João','742','Vila Joana','Jundiaí','SP'),
("André Leandro Pereira",'956.577.138-69',"andre-pereira77@rubens.adm.br",'Rua das Fiandeiras','325','Vila Olímpia','São Paulo','SP'),
("Adriana Amanda Gabriela Rocha",'634.134.530-50',"adriana-rocha84@ufscar.br",'Praça Frederico Junqueira','774','Vila Cassaro','Itatiba','SP'),
("Malu Hadassa Campos",'632.798.327-80',"maluhadassacampos@chiba.net.br",'Rua Aluízio Castione Sans','423','Jardim Residencial Itapuã','Araras','SP'),
("Amanda Luzia da Silva",'621.362.608-55',"amandaluziadasilva@me.com.br",'Rua Copo de Leite','160','Jardim Planalto','Piracicaba','SP'),
("Aparecida Antonella Sophie Jesus",'828.320.844-60',"aparecida_jesus@nelsonalfredoimoveis.com.br",'Avenida Orozimbo Bernardes','273','Jardim da Paineira','Mococa','SP'),
("Yago Murilo Dias",'075.304.426-94',"yago-dias76@libbero.com.br",'Travessa Primeira Estampa Esportiva','738','Americanópolis','São Paulo','SP'),
("Isis Sueli da Conceição",'492.483.626-56',"isis_daconceicao@samsaraimoveis.com.br",'Rua Alcides de Oliveira','262','Jardim Europa','Jundiaí','SP'),
("Manuel Oliver Mendes",'653.768.367-03',"manuel_oliver_mendes@toysbrasil.com.br",'Rua Sebastião da Silva Leme','58','Jardim Nova Era','Leme','SP'),
("Mirella Antonella Lara Pereira",'038.128.533-29',"mirella.antonella.pereira@sistectecnologia.com.br",'Rua Francisco Crestana','289','Vila Nossa Senhora de Fátima','São Carlos','SP'),
("Kevin Davi Caldeira",'838.525.211-81',"kevin_caldeira@aichele.com.br",'Travessa Dolores Lima','553','Jardim Guiomar','São Paulo','SP'),
("Luiz Hugo Miguel Ferreira",'657.750.805-48',"luiz_hugo_ferreira@ideiaviva.com.br",'Rua Sebastião Uchôa Leite','761','Jardim Nelia IV','São Paulo','SP'),
("Cláudia Esther Evelyn Farias",'856.778.073-03',"claudia_farias@dglnet.com.br",'Rua Dona Cacilda Gomes de Almeida Coelho','897','Jardim Brasília','Jaú','SP'),
("Sônia Tânia Freitas",'762.686.076-43',"sonia_freitas@aulicinobastos.com.br",'Rua João Evangelista de Paiva Azevedo','869','Campestre','Santo André','SP'),
("Thomas Elias Diego Nascimento",'430.641.178-82',"thomas.elias.nascimento@achievecidadenova.com.br",'Travessa Composição','421','Jardim Bélgica','São Paulo','SP'),
("Luana Sueli Ramos",'688.649.728-62',"luana_ramos@patrezao.com.br",'Rua Leme da Silva','661','Alto da Mooca','São Paulo','SP'),
("Isadora Aline Ayla da Cunha",'173.055.218-84',"isadoraalinedacunha@vcp.com.br",'Rua Professora Beatriz de Moraes Leite Fogaça','704','Jardim Paulistano','Sorocaba','SP'),
("Priscila Bruna Maria Mendes",'955.094.318-65',"priscila-mendes74@camarasjc.sp.gov.br",'Rua Geralda Silva Spinola','721','Nucleo Habitacional Ivone Alves Palma','Birigüi','SP'),
("Lara Maria Márcia Rocha",'745.757.938-92',"laramariarocha@seraobenedito.com.br",'Via de Acesso 6','770','Condomínio Parque Residencial Damha ll','São Carlos','SP'),
("Fábio Bryan Danilo Novaes",'648.056.108-24',"fabio.bryan.novaes@hotmail.de",'Rua Alcides Luizetto','422','Jardim Guaciara','Taboão da Serra','SP'),
("Amanda Bárbara Isabelly Pinto",'966.719.828-64',"amanda_barbara_pinto@csa.edu.br",'Rua Celeste Duarte Lopes','51','Casa Verde Alta','São Paulo','SP'),
("Heloise Sebastiana Viana",'173.821.758-20',"heloise_sebastiana_viana@dc4.com.br",'Avenida Brasília','621','Loteamento Nova Mogi','Mogi Mirim','SP'),
("Edson Sérgio Souza",'173.823.758-20',"edson.sergio.souza@helponline-sti.com",'Rua das Panteras','271','Conjunto Residencial Sitio Oratório','São Paulo','SP');


insert into ;

insert into ;

insert into Compra (data_compra,hora_compra,quantidade,fk_cliente,fk_produto,fk_caixa)
values
('2023/08/16','15:04',18,22,20,21),
('2020/06/04','14:41',27,10,5,18),
('2023/03/15','15:15',7,17,20,8),
('2022/12/09','10:26',34,18,29,25),
('2020/01/03','17:23',27,11,25,25),
('2020/08/03','15:27',30,10,14,10),
('2024/09/27','16:26',9,21,8,18),
('2022/09/08','08:59',8,11,23,29),
('2021/02/05','09:48',29,18,2,10),
('2022/11/04','13:51',15,25,15,22),
('2021/01/07','13:02',17,8,21,10),
('2021/07/25','15:22',17,21,31,24),
('2022/12/11','16:06',14,24,28,11),
('2024/02/04','14:30',8,5,15,24),
('2024/09/09','14:49',8,14,17,1),
('2021/07/08','10:21',25,7,11,23),
('2022/04/15','08:03',31,13,25,26),
('2021/03/19','14:27',24,18,3,1),
('2024/03/04','16:29',21,12,11,2),
('2023/04/23','18:15',30,9,15,19),
('2023/06/22','18:54',22,14,19,26),
('2021/10/24','14:15',29,22,11,26),
('2023/09/10','16:17',27,3,26,21),
('2024/01/11','08:37',8,4,6,9),
('2020/10/24','17:28',22,19,7,27),
('2022/09/15','16:25',28,16,13,11),
('2020/09/08','11:05',31,5,16,9),
('2020/01/27','11:59',7,22,16,14),
('2024/01/23','12:03',8,16,20,4),
('2020/10/23','16:30',18,21,16,15),
('2022/10/19','13:42',29,5,25,23),
('2022/02/19','10:16',21,17,3,29),
('2020/06/25','10:54',16,19,23,17),
('2023/08/05','15:07',26,23,15,12),
('2023/08/21','18:07',4,15,13,29),
('2023/12/17','13:16',5,9,6,14),
('2020/07/17','11:19',35,21,24,21),
('2020/03/07','13:23',27,15,22,29),
('2023/09/09','16:58',7,12,28,21),
('2021/05/10','17:49',23,7,25,2),
('2020/02/15','15:32',9,18,18,27),
('2024/02/02','16:41',31,11,22,2),
('2020/07/28','13:15',32,14,14,8),
('2020/07/02','15:42',18,7,29,29),
('2024/07/05','17:52',25,4,24,14),
('2024/05/16','08:54',24,17,26,18),
('2022/06/03','13:55',3,8,3,21),
('2020/12/09','13:45',31,6,5,18),
('2022/12/02','16:35',14,1,10,6);


insert into Caixa(data_caixa,hora_sangria,hora_abertura,hora_fechamento,fk_funcionario)
values
('2021/06/08','11:36','10:00','17:00',7),
('2024/04/05','11:58','10:00','18:00',4),
('2021/01/18','11:22','07:00','17:00',16),
('2024/01/02','11:53','10:00','17:00',22),
('2020/01/04','11:50','09:00','17:00',3),
('2020/04/25','15:26','10:00','16:00',1),
('2024/02/24','14:47','09:00','17:00',17),
('2022/05/01','13:28','07:00','17:00',3),
('2020/06/06','16:22','07:00','16:00',21),
('2024/06/22','11:58','07:00','16:00',24),
('2023/05/28','16:29','07:00','18:00',3),
('2023/08/20','13:47','07:00','17:00',3),
('2023/12/03','16:41','09:00','18:00',20),
('2023/10/16','12:25','09:00','17:00',6),
('2020/01/23','13:52','10:00','16:00',11),
('2022/01/26','12:27','07:00','16:00',7),
('2024/11/12','16:38','10:00','17:00',16),
('2020/02/08','15:36','07:00','18:00',5),
('2024/05/02','16:35','07:00','18:00',4),
('2022/03/12','15:2','07:00','18:00',13),
('2023/12/26','13:8','09:00','18:00',2),
('2020/07/09','16:1','09:00','16:00',8),
('2022/03/26','12:37','07:00','18:00',4),
('2021/11/17','14:45','07:00','16:00',2),
('2020/03/02','11:52','09:00','18:00',20),
('2021/06/28','11:17','09:00','16:00',25),
('2023/03/03','12:28','10:00','17:00',20),
('2021/06/26','11:8','10:00','17:00',25),
('2023/03/07','13:9','09:00','16:00',3),
('2023/07/25','11:59','09:00','18:00',7),
('2023/01/07','13:36','10:00','16:00',2),
('2023/06/07','16:22','07:00','17:00',17),
('2022/12/07','12:48','10:00','17:00',3),
('2021/02/04','12:24','10:00','16:00',17),
('2023/11/27','13:12','09:00','18:00',3),
('2022/03/28','11:11','10:00','16:00',18),
('2021/11/22','13:11','10:00','18:00',17),
('2022/03/21','14:33','07:00','18:00',3),
('2021/02/24','11:42','10:00','18:00',2),
('2024/03/26','16:40','09:00','18:00',3),
('2021/04/25','13:19','10:00','16:00',15),
('2021/04/07','12:5','07:00','18:00',21),
('2020/10/10','11:46','09:00','16:00',21),
('2021/12/14','14:4','09:00','16:00',18),
('2020/04/19','11:12','09:00','18:00',9),
('2023/11/10','14:8','10:00','17:00',6),
('2021/12/11','12:3','07:00','16:00',17),
('2022/07/03','14:4','09:00','18:00',25),
('2020/11/11','15:41','07:00','18:00',20);

insert into Funcionario (nome_funcionario,telefone_funcionario,cpf_funcionario,salario,data_admissao,data_saida)
values
('Vitor Santos Pereira','(12) 3350-4523','301.192.634-40',1843,'2021-03-13','2021-11-03'),
('Amanda Oliveira Araujo','(13) 3239-7083','835.800.234-38',2664,'2020-01-08','2021-06-06'),
('Tânia Castro Carvalho','(19) 2757-3954','330.288.965-83',4464,'2021-01-22','2021-02-22'),
('Tiago Fernandes Barros','(15) 3743-0642','648.841.111-09',1376,'2022-01-20','2023-06-20'),
('Renan Barbosa Carvalho','(15) 3881-2463','687.465.912-06',3810,'2020-01-02','2022-01-30'),
('Amanda Barros Oliveira','(13) 3225-8783','383.289.541-84',3401,'2022-03-22','2022-12-23'),
('Gustavo Santos Souza','(15) 3542-6761','717.565.711-04',3579,'2022-07-01',' '),
('Gustavo Silva Souza','(13) 3857-7169','436.974.722-83',4423,'2021-03-22','2022-06-09'),
('Bruno Cunha Azevedo','(19) 3505-4318','417.960.900-26',3908,'2022-08-03',' '),
('Julieta Rocha Martins','(18) 2271-7241','863.770.654-18',1418,'2021-12-27',' '),
('Thaís Costa Ferreira','(18) 3311-6862','300.228.970-11',3664,'2021-01-01','2021-03-09'),
('Beatrice Lima Costa','(14) 3142-7207','790.370.985-25',2491,'2020-04-24','2021-03-02'),
('Ágatha Sousa Rocha','(18) 3641-2482','709.619.069-44',4352,'2022-09-10',' '),
('Renan Dias Silva','(14) 3743-7632','210.098.785-22',2147,'2020-04-03',' '),
('Joao Sousa Lima','(16) 2268-6723','729.505.932-67',3861,'2020-02-28','2021-08-28'),
('Mateus Rodrigues Rocha','(15) 2289-4127','274.253.973-58',4223,'2021-12-31',' '),
('Clara Martins Barros','(14) 3146-7832','970.193.073-88',4296,'2021-08-19',' '),
('Kaua Pereira Dias','(13) 3665-8607','192.307.773-23',3911,'2020-10-28',' '),
('Gabriela Correia Oliveira','(18) 2155-8748','961.442.992-54',2842,'2022-02-02','2022-11-24'),
('Leonardo Silva Santos','(12) 2673-3039','287.342.631-44',3032,'2020-10-13',' '),
('Eduarda Cunha Sousa','(16) 3586-6160','611.869.184-38',2963,'2021-01-09','2021-11-25'),
('Luiza Sousa Ferreira','(15) 3468-7827','117.789.001-19',3008,'2021-02-10','2022-02-05'),
('Tânia Cunha Goncalves','(16) 3246-1105','175.017.999-70',3763,'2021-04-14',' '),
('Giovanna Ferreira Souza','(11) 2885-4226','434.453.286-41',4010,'2020-03-04',' '),
('Ana Barros Carvalho','(12) 3825-5332','208.815.497-38',3926,'2019-12-22',' '),
('Martim Goncalves Rodrigues','(11) 3046-2091','534.558.342-05',4422,'2021-08-01','2021-09-05'),
('Pedro Rodrigues Silva','(18) 3142-9230','135.111.371-28',4099,'2022-09-01',' '),
('Alex Rocha Ribeiro','(12) 3071-0947','977.611.870-45',3180,'2020-02-04','2021-03-19'),
('Julian Alves Costa','(14) 3056-6943','435.183.992-92',4152,'2022-04-05','2022-05-15'),
('Sophia Pinto Goncalves','(19) 3685-4157','302.106.110-90',2030,'2020-02-21','2020-06-20');

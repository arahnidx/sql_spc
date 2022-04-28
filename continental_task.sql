#criação de tabela que armazena os dados para comparação
CREATE TABLE HeapTableWithMachines
(
    [machine] CHAR(4)
)

INSERT INTO HeapTableWithMachines VALUES ('TG01')
INSERT INTO HeapTableWithMachines VALUES ('TG02')
INSERT INTO HeapTableWithMachines VALUES ('TG03')
INSERT INTO HeapTableWithMachines VALUES ('TG04')
INSERT INTO HeapTableWithMachines VALUES ('TG05')
INSERT INTO HeapTableWithMachines VALUES ('TG06')
INSERT INTO HeapTableWithMachines VALUES ('TG07')
INSERT INTO HeapTableWithMachines VALUES ('TG08')
INSERT INTO HeapTableWithMachines VALUES ('TG09')
INSERT INTO HeapTableWithMachines VALUES ('TG10')

#fazendo a junção dos dados encontrados na tabela principal onde ficam armazenados os dados de geometria das 8 máquinas de análise
SELECT HeapTableWithMachines.machine, geometria.linha, geometria.turno, geometria.data
FROM HeapTableWithMachines 
LEFT JOIN geometria ON HeapTableWithMachines.machine = geometria.linha AND geometria.data = '44526' AND geometria.turno = '1';

#fazendo mesmo processo para comparação
SELECT HeapTableWithMachines.machine, geometria.linha, geometria.turno, geometria.data
FROM HeapTableWithMachines CROSS JOIN geometria
ON HeapTableWithMachines.machine = geometria.linha AND geometria.data = '44526' AND geometria.turno = '1' ; 

#realizando o corssjoin para os resultados do turno que ficou de fora
SELECT HeapTableWithMachines.machine, geometria.linha, geometria.turno, geometria.data
FROM HeapTableWithMachines CROSS JOIN geometria ON HeapTableWithMachines.machine = geometria.linha AND geometria.data = '44526'; 



#gerando lançamentos
SELECT HeapTableWithMachines.machine, geo1.linha AND geo2.linha AS linha, geo1.turno AND geo2.turno AS turno, geo1.data AND geo2.data AS lancamento
FROM HeapTableWithMachines 
LEFT JOIN geometria AS geo1 ON HeapTableWithMachines.machine = geo1.linha AND geo1.data = '44526' AND geo1.turno = '1' 
LEFT JOIN geometria AS geo2 ON HeapTableWithMachines.machine = geo2.linha AND geo2.data = '44525' AND geo2.turno = '2';


SELECT HeapTableWithMachines.machine, geometria.linha, geometria.turno, geometria.data
FROM HeapTableWithMachines 
LEFT JOIN geometria ON HeapTableWithMachines.machine = geometria.linha AND geometria.data = '44526' AND geometria.turno = '1'
LEFT JOIN geometria ON HeapTableWithMachines.machine = geometria.linha AND geometria.data = '44526' AND geometria.turno = '2';

#mostrando as faltas
SELECT linha, turno, data FROM geometria WHERE



SELECT HeapTableWithMachines.machine, HeapTableWithMachines.turno, geometria.linha, geometria.data
FROM HeapTableWithMachines 
LEFT JOIN geometria ON HeapTableWithMachines.machine = geometria.linha AND geometria.data = '44526' AND HeapTableWithMachines.turno = geometria.turno;



SELECT HeapTableWithMachines.machine, HeapTableWithMachines.turno, geometria.linha, geometria.data
FROM HeapTableWithMachines 
LEFT JOIN geometria ON HeapTableWithMachines.machine = geometria.linha AND HeapTableWithMachines.turno = geometria.turno AND geometria.data = '44526';



SET @StartDate = 44525;
SET @EndDate = 44526;


SELECT HeapTableWithMachines.machine, HeapTableWithMachines.turno, geometria.linha, geometria.data
FROM HeapTableWithMachines 
LEFT JOIN geometria ON HeapTableWithMachines.machine = geometria.linha AND HeapTableWithMachines.turno = geometria.turno AND geometria.data = @StartDate;
SET @StartDate = @SetDate + 1;














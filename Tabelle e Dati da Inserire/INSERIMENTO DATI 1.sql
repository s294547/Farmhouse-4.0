-- SPECIE
INSERT INTO Specie
VALUES('Ovino', 0.3);
INSERT INTO Specie
VALUES('Bovino', 0.3);
INSERT INTO Specie
VALUES('Caprino', 0.3);

-- FORNITORE
INSERT INTO Fornitore
VALUES('IT01515821201', 'Ovini & CO', 'Zootech s.r.l.', 'Via dei Pini 10, Arezzo');
INSERT INTO Fornitore
VALUES('IT91647659101', 'Arca di Pisa', 'Fattorie 2.0 s.r.l.', 'Via del trattore 19, Pisa');
INSERT INTO Fornitore
VALUES('IT896947659101', 'Mondo agraria', 'Agraria distribuzione s.r.l.', 'Via della libertà 1, Firenze');
INSERT INTO Fornitore
VALUES('IT71700010265', 'Animali da formaggio', 'Arcimboldo Rossi s.r.l.', 'Via dei gatti 44, Pontedera');

-- AGRITURISMO
INSERT INTO Agriturismo
VALUES ('1');
INSERT INTO Agriturismo
VALUES ('2');
INSERT INTO Agriturismo
VALUES ('3');

-- STALLA
INSERT INTO Stalla
VALUES ('aaa0000', '1');
INSERT INTO Stalla
VALUES ('aaa0001', '1');
INSERT INTO Stalla
VALUES ('aaa0002', '1');
INSERT INTO Stalla
VALUES ('aaa0003', '1');
INSERT INTO Stalla
VALUES ('aaa0004', '1');
INSERT INTO Stalla
VALUES ('aaa0005', '1');
INSERT INTO Stalla
VALUES ('aaa0006', '1');
INSERT INTO Stalla
VALUES ('aaa0007', '2');
INSERT INTO Stalla
VALUES ('aaa0008', '2');
INSERT INTO Stalla
VALUES ('aaa0009', '2');
INSERT INTO Stalla
VALUES ('aaa0010', '2');
INSERT INTO Stalla
VALUES ('aaa0011', '2');
INSERT INTO Stalla
VALUES ('aaa0012', '2');
INSERT INTO Stalla
VALUES ('aaa0013', '2');
INSERT INTO Stalla
VALUES ('aaa0014', '3');
INSERT INTO Stalla
VALUES ('aaa0015', '3');
INSERT INTO Stalla
VALUES ('aaa0016', '3');
INSERT INTO Stalla
VALUES ('aaa0017', '3');
INSERT INTO Stalla
VALUES ('aaa0018', '3');
INSERT INTO Stalla
VALUES ('aaa0019', '3');
INSERT INTO Stalla
VALUES ('aaa0020', '3');

-- LOCALE
INSERT INTO Locale
VALUES ('aaa0000','Piena, gomma', 'Sud', 'no', 'aaa0000', 10, 15, 4);
INSERT INTO Locale
VALUES ('aaa0001','Piena, calcestruzzo', 'Nord', 'no', 'aaa0000', 10, 15, 4);
INSERT INTO Locale
VALUES ('aaa0002','Forata', 'Est', 'no', 'aaa0000', 10, 15, 4);
INSERT INTO Locale
VALUES ('aaa0003','Piena, gomma', 'Ovest', 'si', 'aaa0000', 10, 15, 4);
INSERT INTO Locale
VALUES ('aaa0004','Piena, gomma', 'Sud', 'no', 'aaa0001', 10, 15, 4);
INSERT INTO Locale
VALUES ('aaa0005','Piena, calcestruzzo', 'Nord', 'no', 'aaa0001', 10, 15, 4);
INSERT INTO Locale
VALUES ('aaa0006','Forata', 'Est', 'no', 'aaa0001', 10, 15, 4);
INSERT INTO Locale
VALUES ('aaa0007','Piena, gomma', 'Ovest', 'si', 'aaa0001', 10, 15, 4);
INSERT INTO Locale
VALUES ('aaa0008','Piena, gomma', 'Sud', 'no', 'aaa0002', 10, 15, 4);
INSERT INTO Locale
VALUES ('aaa0009','Piena, calcestruzzo', 'Nord', 'no', 'aaa0002', 10, 15, 4);
INSERT INTO Locale
VALUES ('aaa0010','Forata', 'Est', 'no', 'aaa0002', 10, 15, 4);
INSERT INTO Locale
VALUES ('aaa0011','Piena, gomma', 'Ovest', 'si', 'aaa0002', 10, 15, 4);
INSERT INTO Locale
VALUES ('aaa0012','Piena, gomma', 'Sud', 'no', 'aaa0003', 10, 15, 4);
INSERT INTO Locale
VALUES ('aaa0013','Piena, calcestruzzo', 'Nord', 'no', 'aaa0003', 10, 15, 4);
INSERT INTO Locale
VALUES ('aaa0014','Forata', 'Est', 'no', 'aaa0003', 10, 15, 4);
INSERT INTO Locale
VALUES ('aaa0015','Piena, gomma', 'Ovest', 'si', 'aaa0003', 10, 15, 4);
INSERT INTO Locale
VALUES ('aaa0016','Piena, gomma', 'Sud', 'no', 'aaa0004', 10, 15, 4);
INSERT INTO Locale
VALUES ('aaa0017','Piena, calcestruzzo', 'Nord', 'no', 'aaa0004', 10, 15, 4);
INSERT INTO Locale
VALUES ('aaa0018','Forata', 'Est', 'no', 'aaa0004', 10, 15, 4);
INSERT INTO Locale
VALUES ('aaa0019','Piena, gomma', 'Ovest', 'si', 'aaa0004', 10, 15, 4);
INSERT INTO Locale
VALUES ('aaa0020','Piena, gomma', 'Sud', 'no', 'aaa0005', 10, 15, 4);
INSERT INTO Locale
VALUES ('aaa0021','Piena, calcestruzzo', 'Nord', 'no', 'aaa0005', 10, 15, 4);
INSERT INTO Locale
VALUES ('aaa0022','Forata', 'Est', 'no', 'aaa0005', 10, 15, 4);
INSERT INTO Locale
VALUES ('aaa0023','Piena, gomma', 'Ovest', 'si', 'aaa0005', 10, 15, 4);

-- gruppo mungitura
INSERT INTO Gruppo_Mungitura
VALUES('2019-09-01 7:00:00', 'aaa0000');
INSERT INTO Gruppo_Mungitura
VALUES('2019-09-01 10:00:00', 'aaa0000');
INSERT INTO Gruppo_Mungitura
VALUES('2019-09-01 13:00:00', 'aaa0000');
INSERT INTO Gruppo_Mungitura
VALUES('2019-09-01 7:00:00', 'aaa0001');
INSERT INTO Gruppo_Mungitura
VALUES('2019-09-01 10:00:00', 'aaa0001');
INSERT INTO Gruppo_Mungitura
VALUES('2019-09-01 13:00:00', 'aaa0001');
INSERT INTO Gruppo_Mungitura
VALUES('2019-09-01 7:00:00', 'aaa0002');
INSERT INTO Gruppo_Mungitura
VALUES('2019-09-01 10:00:00', 'aaa0002');
INSERT INTO Gruppo_Mungitura
VALUES('2019-09-01 13:00:00', 'aaa0002');
INSERT INTO Gruppo_Mungitura
VALUES('2019-09-01 7:00:00', 'aaa0003');
INSERT INTO Gruppo_Mungitura
VALUES('2019-09-01 10:00:00', 'aaa0003');
INSERT INTO Gruppo_Mungitura
VALUES('2019-09-01 13:00:00', 'aaa0003');
INSERT INTO Gruppo_Mungitura
VALUES('2019-09-01 7:00:00', 'aaa0004');
INSERT INTO Gruppo_Mungitura
VALUES('2019-09-01 10:00:00', 'aaa0004');
INSERT INTO Gruppo_Mungitura
VALUES('2019-09-01 13:00:00', 'aaa0004');
INSERT INTO Gruppo_Mungitura
VALUES('2019-09-01 7:00:00', 'aaa0005');
INSERT INTO Gruppo_Mungitura
VALUES('2019-09-01 10:00:00', 'aaa0005');
INSERT INTO Gruppo_Mungitura
VALUES('2019-09-01 13:00:00', 'aaa0005');
INSERT INTO Gruppo_Mungitura
VALUES('2019-09-01 7:00:00', 'aaa0006');
INSERT INTO Gruppo_Mungitura
VALUES('2019-09-01 10:00:00', 'aaa0006');
INSERT INTO Gruppo_Mungitura
VALUES('2019-09-01 13:00:00', 'aaa0006');
INSERT INTO Gruppo_Mungitura
VALUES('2019-09-01 7:00:00', 'aaa0007');
INSERT INTO Gruppo_Mungitura
VALUES('2019-09-01 10:00:00', 'aaa0007');
INSERT INTO Gruppo_Mungitura
VALUES('2019-09-01 13:00:00', 'aaa0007');
INSERT INTO Gruppo_Mungitura
VALUES('2019-09-01 7:00:00', 'aaa0008');
INSERT INTO Gruppo_Mungitura
VALUES('2019-09-01 10:00:00', 'aaa0008');
INSERT INTO Gruppo_Mungitura
VALUES('2019-09-01 13:00:00', 'aaa0008');
INSERT INTO Gruppo_Mungitura
VALUES('2019-09-01 7:00:00', 'aaa0009');
INSERT INTO Gruppo_Mungitura
VALUES('2019-09-01 10:00:00', 'aaa0009');
INSERT INTO Gruppo_Mungitura
VALUES('2019-09-01 13:00:00', 'aaa0009');
INSERT INTO Gruppo_Mungitura
VALUES('2019-09-01 7:00:00', 'aaa0010');
INSERT INTO Gruppo_Mungitura
VALUES('2019-09-01 10:00:00', 'aaa0010');
INSERT INTO Gruppo_Mungitura
VALUES('2019-09-01 13:00:00', 'aaa0010');
INSERT INTO Gruppo_Mungitura
VALUES('2019-09-01 7:00:00', 'aaa0011');
INSERT INTO Gruppo_Mungitura
VALUES('2019-09-01 10:00:00', 'aaa0011');
INSERT INTO Gruppo_Mungitura
VALUES('2019-09-01 13:00:00', 'aaa0011');
INSERT INTO Gruppo_Mungitura
VALUES('2019-09-01 7:00:00', 'aaa0012');
INSERT INTO Gruppo_Mungitura
VALUES('2019-09-01 10:00:00', 'aaa0012');
INSERT INTO Gruppo_Mungitura
VALUES('2019-09-01 13:00:00', 'aaa0012');
INSERT INTO Gruppo_Mungitura
VALUES('2019-09-01 7:00:00', 'aaa0013');
INSERT INTO Gruppo_Mungitura
VALUES('2019-09-01 10:00:00', 'aaa0013');
INSERT INTO Gruppo_Mungitura
VALUES('2019-09-01 13:00:00', 'aaa0013');
INSERT INTO Gruppo_Mungitura
VALUES('2019-09-01 7:00:00', 'aaa0014');
INSERT INTO Gruppo_Mungitura
VALUES('2019-09-01 10:00:00', 'aaa0014');
INSERT INTO Gruppo_Mungitura
VALUES('2019-09-01 13:00:00', 'aaa0014');
INSERT INTO Gruppo_Mungitura
VALUES('2019-09-01 7:00:00', 'aaa0015');
INSERT INTO Gruppo_Mungitura
VALUES('2019-09-01 10:00:00', 'aaa0015');
INSERT INTO Gruppo_Mungitura
VALUES('2019-09-01 13:00:00', 'aaa0015');
INSERT INTO Gruppo_Mungitura
VALUES('2019-09-01 7:00:00', 'aaa0016');
INSERT INTO Gruppo_Mungitura
VALUES('2019-09-01 10:00:00', 'aaa0016');
INSERT INTO Gruppo_Mungitura
VALUES('2019-09-01 13:00:00', 'aaa0016');
INSERT INTO Gruppo_Mungitura
VALUES('2019-09-01 7:00:00', 'aaa0017');
INSERT INTO Gruppo_Mungitura
VALUES('2019-09-01 10:00:00', 'aaa0017');
INSERT INTO Gruppo_Mungitura
VALUES('2019-09-01 13:00:00', 'aaa0017');
INSERT INTO Gruppo_Mungitura
VALUES('2019-09-01 7:00:00', 'aaa0018');
INSERT INTO Gruppo_Mungitura
VALUES('2019-09-01 10:00:00', 'aaa0018');
INSERT INTO Gruppo_Mungitura
VALUES('2019-09-01 13:00:00', 'aaa0018');
INSERT INTO Gruppo_Mungitura
VALUES('2019-09-01 7:00:00', 'aaa0019');
INSERT INTO Gruppo_Mungitura
VALUES('2019-09-01 10:00:00', 'aaa0019');
INSERT INTO Gruppo_Mungitura
VALUES('2019-09-01 13:00:00', 'aaa0019');
INSERT INTO Gruppo_Mungitura
VALUES('2019-09-01 7:00:00', 'aaa0020');
INSERT INTO Gruppo_Mungitura
VALUES('2019-09-01 10:00:00', 'aaa0020');
INSERT INTO Gruppo_Mungitura
VALUES('2019-09-01 13:00:00', 'aaa0020');
INSERT INTO Gruppo_Mungitura
VALUES('2019-09-01 7:00:00', 'aaa0021');
INSERT INTO Gruppo_Mungitura
VALUES('2019-09-01 10:00:00', 'aaa0021');
INSERT INTO Gruppo_Mungitura
VALUES('2019-09-01 13:00:00', 'aaa0021');
INSERT INTO Gruppo_Mungitura
VALUES('2019-09-01 7:00:00', 'aaa0022');
INSERT INTO Gruppo_Mungitura
VALUES('2019-09-01 10:00:00', 'aaa0022');
INSERT INTO Gruppo_Mungitura
VALUES('2019-09-01 13:00:00', 'aaa0022');
INSERT INTO Gruppo_Mungitura
VALUES('2019-09-01 7:00:00', 'aaa0023');
INSERT INTO Gruppo_Mungitura
VALUES('2019-09-01 10:00:00', 'aaa0023');
INSERT INTO Gruppo_Mungitura
VALUES('2019-09-01 13:00:00', 'aaa0023');

-- mangiatoie
INSERT INTO Mangiatoie
VALUES('Per Mucche', '1500');
INSERT INTO Mangiatoie
VALUES('Per Capre', '1500');
INSERT INTO Mangiatoie
VALUES('Per Pecore', '1500');

-- abbeveratoi
INSERT INTO Abbeveratoi
VALUES('Per Mucche', '1500');
INSERT INTO Abbeveratoi
VALUES('Per Capre', '1500');
INSERT INTO Abbeveratoi
VALUES('Per Pecore', '1500');

-- condizionatori
INSERT INTO Condizionatori
VALUES('Per Mucche');
INSERT INTO Condizionatori
VALUES('Per Pecore');
INSERT INTO Condizionatori
VALUES('Per Capre');

-- disp illuminazione
INSERT INTO Dispositivi_Illuminazione
VALUES('Per Mucche');
INSERT INTO Dispositivi_Illuminazione
VALUES('Per Pecore');
INSERT INTO Dispositivi_Illuminazione
VALUES('Per Capre');

-- allestimento
INSERT INTO Allestimento
VALUES ('aaa0000',4 , 15, 21, 15,  'Per Mucche', 'Per Mucche', 'Per Mucche', 'Per Mucche');
INSERT INTO Allestimento
VALUES ('aaa0001',4 , 15, 21, 15,  'Per Mucche', 'Per Mucche', 'Per Mucche', 'Per Mucche');
INSERT INTO Allestimento
VALUES ('aaa0002',4 , 15, 21, 15,  'Per Mucche', 'Per Mucche', 'Per Mucche', 'Per Mucche');
INSERT INTO Allestimento
VALUES ('aaa0003',4 , 15, 21, 15,  'Per Mucche', 'Per Mucche', 'Per Mucche', 'Per Mucche');
INSERT INTO Allestimento
VALUES ('aaa0004',4 , 15, 21, 15,  'Per Mucche', 'Per Mucche', 'Per Mucche', 'Per Mucche');
INSERT INTO Allestimento
VALUES ('aaa0005',4 , 15, 21, 15,  'Per Mucche', 'Per Mucche', 'Per Mucche', 'Per Mucche');
INSERT INTO Allestimento
VALUES ('aaa0006',4 , 15, 21, 15,  'Per Mucche', 'Per Mucche', 'Per Mucche', 'Per Mucche');
INSERT INTO Allestimento
VALUES ('aaa0007',4 , 15, 21, 15,  'Per Mucche', 'Per Mucche', 'Per Mucche', 'Per Mucche');
INSERT INTO Allestimento
VALUES ('aaa0008',4 , 15, 21, 15,  'Per Pecore', 'Per Pecore', 'Per Pecore', 'Per Pecore');
INSERT INTO Allestimento
VALUES ('aaa0009',4 , 15, 21, 15,  'Per Pecore', 'Per Pecore', 'Per Pecore', 'Per Pecore');
INSERT INTO Allestimento
VALUES ('aaa0010',4 , 15, 21, 15,  'Per Pecore', 'Per Pecore', 'Per Pecore', 'Per Pecore');
INSERT INTO Allestimento
VALUES ('aaa0011',4 , 15, 21, 15,  'Per Pecore', 'Per Pecore', 'Per Pecore', 'Per Pecore');
INSERT INTO Allestimento
VALUES ('aaa0012',4 , 15, 21, 15,  'Per Pecore', 'Per Pecore', 'Per Pecore', 'Per Pecore');
INSERT INTO Allestimento
VALUES ('aaa0013',4 , 15, 21, 15,  'Per Pecore', 'Per Pecore', 'Per Pecore', 'Per Pecore');
INSERT INTO Allestimento
VALUES ('aaa0014',4 , 15, 21, 15,  'Per Pecore', 'Per Pecore', 'Per Pecore', 'Per Pecore');
INSERT INTO Allestimento
VALUES ('aaa0015',4 , 15, 21, 15,  'Per Pecore', 'Per Pecore', 'Per Pecore', 'Per Pecore');
INSERT INTO Allestimento
VALUES ('aaa0016',4 , 15, 21, 15,  'Per Capre', 'Per Capre', 'Per Capre', 'Per Capre');
INSERT INTO Allestimento
VALUES ('aaa0017',4 , 15, 21, 15,  'Per Capre', 'Per Capre', 'Per Capre', 'Per Capre');
INSERT INTO Allestimento
VALUES ('aaa0018',4 , 15, 21, 15,  'Per Capre', 'Per Capre', 'Per Capre', 'Per Capre');
INSERT INTO Allestimento
VALUES ('aaa0019',4 , 15, 21, 15,  'Per Capre', 'Per Capre', 'Per Capre', 'Per Capre');
INSERT INTO Allestimento
VALUES ('aaa0020',4 , 15, 21, 15,  'Per Capre', 'Per Capre', 'Per Capre', 'Per Capre');
INSERT INTO Allestimento
VALUES ('aaa0021',4 , 15, 21, 15,  'Per Capre', 'Per Capre', 'Per Capre', 'Per Capre');
INSERT INTO Allestimento
VALUES ('aaa0022',4 , 15, 21, 15,  'Per Capre', 'Per Capre', 'Per Capre', 'Per Capre');
INSERT INTO Allestimento
VALUES ('aaa0023',4 , 15, 21, 15,  'Per Capre', 'Per Capre', 'Per Capre', 'Per Capre');

-- singola mangiatoia
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0000', 'aaa0000' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0001', 'aaa0000' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0002', 'aaa0000' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0003', 'aaa0000' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0004', 'aaa0000' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0005', 'aaa0000' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0006', 'aaa0000' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0007', 'aaa0000' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0008', 'aaa0000' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0009', 'aaa0000' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0010', 'aaa0000' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0011', 'aaa0000' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0012', 'aaa0000' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0013', 'aaa0000' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0014', 'aaa0000' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0015', 'aaa0001' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0016', 'aaa0001' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0017', 'aaa0001' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0018', 'aaa0001' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0019', 'aaa0001' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0020', 'aaa0001' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0021', 'aaa0001' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0022', 'aaa0001' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0023', 'aaa0001' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0024', 'aaa0001' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0025', 'aaa0001' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0026', 'aaa0001' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0027', 'aaa0001' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0028', 'aaa0001' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0029', 'aaa0001' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0030', 'aaa0002' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0031', 'aaa0002' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0032', 'aaa0002' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0033', 'aaa0002' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0034', 'aaa0002' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0035', 'aaa0002' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0036', 'aaa0002' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0037', 'aaa0002' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0038', 'aaa0002' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0039', 'aaa0002' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0040', 'aaa0002' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0041', 'aaa0002' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0042', 'aaa0002' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0043', 'aaa0002' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0044', 'aaa0002' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0045', 'aaa0003' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0046', 'aaa0003' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0047', 'aaa0003' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0048', 'aaa0003' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0049', 'aaa0003' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0050', 'aaa0003' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0051', 'aaa0003' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0052', 'aaa0003' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0053', 'aaa0003' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0054', 'aaa0003' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0055', 'aaa0003' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0056', 'aaa0003' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0057', 'aaa0003' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0058', 'aaa0003' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0059', 'aaa0003' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0060', 'aaa0004' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0061', 'aaa0004' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0062', 'aaa0004' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0063', 'aaa0004' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0064', 'aaa0004' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0065', 'aaa0004' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0066', 'aaa0004' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0067', 'aaa0004' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0068', 'aaa0004' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0069', 'aaa0004' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0070', 'aaa0004' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0071', 'aaa0004' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0072', 'aaa0004' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0073', 'aaa0004' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0074', 'aaa0004' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0075', 'aaa0005' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0076', 'aaa0005' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0077', 'aaa0005' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0078', 'aaa0005' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0079', 'aaa0005' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0080', 'aaa0005' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0081', 'aaa0005' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0082', 'aaa0005' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0083', 'aaa0005' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0084', 'aaa0005' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0085', 'aaa0005' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0086', 'aaa0005' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0087', 'aaa0005' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0088', 'aaa0005' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0089', 'aaa0005' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0090', 'aaa0006' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0091', 'aaa0006' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0092', 'aaa0006' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0093', 'aaa0006' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0094', 'aaa0006' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0095', 'aaa0006' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0096', 'aaa0006' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0097', 'aaa0006' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0098', 'aaa0006' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0099', 'aaa0006' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0100', 'aaa0006' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0101', 'aaa0006' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0102', 'aaa0006' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0103', 'aaa0006' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0104', 'aaa0006' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0105', 'aaa0007' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0106', 'aaa0007' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0107', 'aaa0007' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0108', 'aaa0007' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0109', 'aaa0007' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0110', 'aaa0007' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0111', 'aaa0007' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0112', 'aaa0007' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0113', 'aaa0007' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0114', 'aaa0007' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0115', 'aaa0007' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0116', 'aaa0007' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0117', 'aaa0007' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0118', 'aaa0007' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0119', 'aaa0007' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0120', 'aaa0008' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0121', 'aaa0008' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0122', 'aaa0008' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0123', 'aaa0008' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0124', 'aaa0008' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0125', 'aaa0008' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0126', 'aaa0008' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0127', 'aaa0008' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0128', 'aaa0008' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0129', 'aaa0008' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0130', 'aaa0008' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0131', 'aaa0008' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0132', 'aaa0008' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0133', 'aaa0008' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0134', 'aaa0008' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0135', 'aaa0009' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0136', 'aaa0009' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0137', 'aaa0009' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0138', 'aaa0009' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0139', 'aaa0009' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0140', 'aaa0009' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0141', 'aaa0009' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0142', 'aaa0009' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0143', 'aaa0009' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0144', 'aaa0009' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0145', 'aaa0009' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0146', 'aaa0009' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0147', 'aaa0009' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0148', 'aaa0009' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0149', 'aaa0009' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0150', 'aaa0010' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0151', 'aaa0010' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0152', 'aaa0010' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0153', 'aaa0010' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0154', 'aaa0010' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0155', 'aaa0010' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0156', 'aaa0010' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0157', 'aaa0010' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0158', 'aaa0010' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0159', 'aaa0010' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0160', 'aaa0010' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0161', 'aaa0010' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0162', 'aaa0010' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0163', 'aaa0010' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0164', 'aaa0010' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0165', 'aaa0011' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0166', 'aaa0011' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0167', 'aaa0011' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0168', 'aaa0011' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0169', 'aaa0011' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0170', 'aaa0011' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0171', 'aaa0011' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0172', 'aaa0011' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0173', 'aaa0011' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0174', 'aaa0011' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0175', 'aaa0011' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0176', 'aaa0011' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0177', 'aaa0011' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0178', 'aaa0011' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0179', 'aaa0011' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0180', 'aaa0012' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0181', 'aaa0012' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0182', 'aaa0012' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0183', 'aaa0012' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0184', 'aaa0012' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0185', 'aaa0012' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0186', 'aaa0012' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0187', 'aaa0012' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0188', 'aaa0012' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0189', 'aaa0012' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0190', 'aaa0012' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0191', 'aaa0012' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0192', 'aaa0012' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0193', 'aaa0012' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0194', 'aaa0012' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0195', 'aaa0013' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0196', 'aaa0013' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0197', 'aaa0013' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0198', 'aaa0013' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0199', 'aaa0013' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0200', 'aaa0013' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0201', 'aaa0013' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0202', 'aaa0013' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0203', 'aaa0013' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0204', 'aaa0013' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0205', 'aaa0013' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0206', 'aaa0013' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0207', 'aaa0013' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0208', 'aaa0013' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0209', 'aaa0013' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0210', 'aaa0014' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0211', 'aaa0014' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0212', 'aaa0014' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0213', 'aaa0014' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0214', 'aaa0014' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0215', 'aaa0014' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0216', 'aaa0014' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0217', 'aaa0014' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0218', 'aaa0014' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0219', 'aaa0014' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0220', 'aaa0014' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0221', 'aaa0014' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0222', 'aaa0014' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0223', 'aaa0014' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0224', 'aaa0014' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0225', 'aaa0015' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0226', 'aaa0015' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0227', 'aaa0015' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0228', 'aaa0015' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0229', 'aaa0015' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0230', 'aaa0015' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0231', 'aaa0015' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0232', 'aaa0015' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0233', 'aaa0015' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0234', 'aaa0015' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0235', 'aaa0015' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0236', 'aaa0015' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0237', 'aaa0015' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0238', 'aaa0015' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0239', 'aaa0015' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0240', 'aaa0016' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0241', 'aaa0016' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0242', 'aaa0016' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0243', 'aaa0016' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0244', 'aaa0016' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0245', 'aaa0016' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0246', 'aaa0016' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0247', 'aaa0016' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0248', 'aaa0016' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0249', 'aaa0016' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0250', 'aaa0016' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0251', 'aaa0016' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0252', 'aaa0016' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0253', 'aaa0016' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0254', 'aaa0016' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0255', 'aaa0017' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0256', 'aaa0017' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0257', 'aaa0017' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0258', 'aaa0017' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0259', 'aaa0017' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0260', 'aaa0017' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0261', 'aaa0017' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0262', 'aaa0017' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0263', 'aaa0017' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0264', 'aaa0017' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0265', 'aaa0017' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0266', 'aaa0017' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0267', 'aaa0017' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0268', 'aaa0017' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0269', 'aaa0017' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0270', 'aaa0018' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0271', 'aaa0018' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0272', 'aaa0018' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0273', 'aaa0018' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0274', 'aaa0018' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0275', 'aaa0018' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0276', 'aaa0018' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0277', 'aaa0018' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0278', 'aaa0018' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0279', 'aaa0018' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0280', 'aaa0018' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0281', 'aaa0018' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0282', 'aaa0018' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0283', 'aaa0018' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0284', 'aaa0018' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0285', 'aaa0019' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0286', 'aaa0019' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0287', 'aaa0019' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0288', 'aaa0019' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0289', 'aaa0019' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0291', 'aaa0019' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0292', 'aaa0019' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0293', 'aaa0019' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0294', 'aaa0019' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0295', 'aaa0019' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0296', 'aaa0019' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0297', 'aaa0019' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0298', 'aaa0019' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0299', 'aaa0019' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0300', 'aaa0020' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0301', 'aaa0020' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0302', 'aaa0020' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0303', 'aaa0020' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0304', 'aaa0020' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0305', 'aaa0020' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0306', 'aaa0020' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0307', 'aaa0020' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0308', 'aaa0020' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0309', 'aaa0020' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0310', 'aaa0020' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0311', 'aaa0020' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0312', 'aaa0020' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0313', 'aaa0020' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0314', 'aaa0020' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0315', 'aaa0021' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0316', 'aaa0021' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0317', 'aaa0021' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0318', 'aaa0021' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0319', 'aaa0021' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0320', 'aaa0021' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0321', 'aaa0021' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0322', 'aaa0021' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0323', 'aaa0021' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0324', 'aaa0021' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0325', 'aaa0021' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0326', 'aaa0021' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0327', 'aaa0021' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0328', 'aaa0021' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0329', 'aaa0021' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0330', 'aaa0022' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0331', 'aaa0022' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0332', 'aaa0022' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0333', 'aaa0022' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0334', 'aaa0022' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0335', 'aaa0022' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0336', 'aaa0022' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0337', 'aaa0022' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0338', 'aaa0022' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0339', 'aaa0022' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0340', 'aaa0022' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0341', 'aaa0022' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0342', 'aaa0022' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0343', 'aaa0022' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0344', 'aaa0022' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0345', 'aaa0023' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0346', 'aaa0023' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0347', 'aaa0023' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0348', 'aaa0023' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0349', 'aaa0023' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0350', 'aaa0023' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0351', 'aaa0023' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0352', 'aaa0023' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0353', 'aaa0023' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0354', 'aaa0023' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0355', 'aaa0023' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0356', 'aaa0023' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0357', 'aaa0023' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0358', 'aaa0023' );
INSERT INTO Singola_Mangiatoia
VALUES ('aaa0359', 'aaa0023' );

-- foraggio
INSERT INTO Foraggio
VALUES ('1', 0.3, 0.1, 0.1, 0.09, 0.2, 0.2, 1000, 'Nessuna');
INSERT INTO Foraggio
VALUES ('2', 0.1, 0.3, 0.08, 0.09, 0.15, 0.2, 1500, 'Fieno');
INSERT INTO Foraggio
VALUES ('3', 0.3, 0.02, 0.1, 0.1, 0.25, 0.1, 1400, 'Insilato');

-- dati cibo
INSERT INTO Dati_Cibo
VALUES('aaa0000', '2019-09-01 7:00:00', 1, 1500);
INSERT INTO Dati_Cibo
VALUES('aaa0000', '2019-09-01 7:30:00', 1, 1200);
INSERT INTO Dati_Cibo
VALUES('aaa0000', '2019-09-01 8:00:00', 1, 1000);
INSERT INTO Dati_Cibo
VALUES('aaa0000', '2019-09-01 8:30:00', 1, 700);
INSERT INTO Dati_Cibo
VALUES('aaa0000', '2019-09-01 9:00:00', 1, 700);
INSERT INTO Dati_Cibo
VALUES('aaa0000', '2019-09-01 9:30:00', 1, 650);
INSERT INTO Dati_Cibo
VALUES('aaa0000', '2019-09-01 10:00:00', 1, 1500);
INSERT INTO Dati_Cibo
VALUES('aaa0000', '2019-09-01 10:30:00', 1, 1100);
INSERT INTO Dati_Cibo
VALUES('aaa0000', '2019-09-01 11:00:00', 1, 1000);
INSERT INTO Dati_Cibo
VALUES('aaa0000', '2019-09-01 11:30:00', 1, 600);
INSERT INTO Dati_Cibo
VALUES('aaa0000', '2019-09-01 12:00:00', 1, 600);
INSERT INTO Dati_Cibo
VALUES('aaa0000', '2019-09-01 12:30:00', 1, 350);
INSERT INTO Dati_Cibo
VALUES('aaa0000', '2019-09-01 13:00:00', 3, 1500);
INSERT INTO Dati_Cibo
VALUES('aaa0001', '2019-09-01 7:00:00', 1, 1500);
INSERT INTO Dati_Cibo
VALUES('aaa0001', '2019-09-01 7:30:00', 1, 1300);
INSERT INTO Dati_Cibo
VALUES('aaa0001', '2019-09-01 8:00:00', 1, 1000);
INSERT INTO Dati_Cibo
VALUES('aaa0001', '2019-09-01 8:30:00', 1, 400);
INSERT INTO Dati_Cibo
VALUES('aaa0001', '2019-09-01 9:00:00', 1, 400);
INSERT INTO Dati_Cibo
VALUES('aaa0001', '2019-09-01 9:30:00', 1, 350);
INSERT INTO Dati_Cibo
VALUES('aaa0001', '2019-09-01 10:00:00', 2, 1500);
INSERT INTO Dati_Cibo
VALUES('aaa0001', '2019-09-01 10:30:00', 2, 1100);
INSERT INTO Dati_Cibo
VALUES('aaa0001', '2019-09-01 11:00:00', 2, 1000);
INSERT INTO Dati_Cibo
VALUES('aaa0001', '2019-09-01 11:30:00', 2, 600);
INSERT INTO Dati_Cibo
VALUES('aaa0001', '2019-09-01 12:00:00', 2, 600);
INSERT INTO Dati_Cibo
VALUES('aaa0001', '2019-09-01 12:30:00', 2, 350);
INSERT INTO Dati_Cibo
VALUES('aaa0001', '2019-09-01 13:00:00', 2, 1500);
INSERT INTO Dati_Cibo
VALUES('aaa0002', '2019-09-01 7:00:00', 1, 1500);
INSERT INTO Dati_Cibo
VALUES('aaa0002', '2019-09-01 7:30:00', 1, 1200);
INSERT INTO Dati_Cibo
VALUES('aaa0002', '2019-09-01 8:00:00', 1, 1000);
INSERT INTO Dati_Cibo
VALUES('aaa0002', '2019-09-01 8:30:00', 1, 700);
INSERT INTO Dati_Cibo
VALUES('aaa0002', '2019-09-01 9:00:00', 1, 700);
INSERT INTO Dati_Cibo
VALUES('aaa0002', '2019-09-01 9:30:00', 1, 650);
INSERT INTO Dati_Cibo
VALUES('aaa0002', '2019-09-01 10:00:00', 3, 1500);
INSERT INTO Dati_Cibo
VALUES('aaa0002', '2019-09-01 10:30:00', 3, 1100);
INSERT INTO Dati_Cibo
VALUES('aaa0002', '2019-09-01 11:00:00', 3, 1000);
INSERT INTO Dati_Cibo
VALUES('aaa0002', '2019-09-01 11:30:00', 3, 600);
INSERT INTO Dati_Cibo
VALUES('aaa0002', '2019-09-01 12:00:00', 3, 600);
INSERT INTO Dati_Cibo
VALUES('aaa0002', '2019-09-01 12:30:00', 3, 350);
INSERT INTO Dati_Cibo
VALUES('aaa0002', '2019-09-01 13:00:00', 3, 1500);
INSERT INTO Dati_Cibo
VALUES('aaa0003', '2019-09-01 7:00:00', 1, 1500);
INSERT INTO Dati_Cibo
VALUES('aaa0003', '2019-09-01 7:30:00', 1, 1500);
INSERT INTO Dati_Cibo
VALUES('aaa0003', '2019-09-01 8:00:00', 1, 1500);
INSERT INTO Dati_Cibo
VALUES('aaa0003', '2019-09-01 8:30:00', 1, 1500);
INSERT INTO Dati_Cibo
VALUES('aaa0003', '2019-09-01 9:00:00', 1, 1500);
INSERT INTO Dati_Cibo
VALUES('aaa0003', '2019-09-01 9:30:00', 1, 1500);
INSERT INTO Dati_Cibo
VALUES('aaa0003', '2019-09-01 10:00:00', 1, 1500);
INSERT INTO Dati_Cibo
VALUES('aaa0003', '2019-09-01 10:30:00', 1, 1500);
INSERT INTO Dati_Cibo
VALUES('aaa0003', '2019-09-01 11:00:00', 1, 1500);
INSERT INTO Dati_Cibo
VALUES('aaa0003', '2019-09-01 11:30:00', 1, 1500);
INSERT INTO Dati_Cibo
VALUES('aaa0003', '2019-09-01 12:00:00', 1, 1500);
INSERT INTO Dati_Cibo
VALUES('aaa0003', '2019-09-01 12:30:00', 1, 1500);
INSERT INTO Dati_Cibo
VALUES('aaa0003', '2019-09-01 13:00:00', 3, 1500);
INSERT INTO Dati_Cibo
VALUES('aaa0120', '2019-09-01 7:00:00', 1, 1500);
INSERT INTO Dati_Cibo
VALUES('aaa0120', '2019-09-01 7:30:00', 1, 1200);
INSERT INTO Dati_Cibo
VALUES('aaa0120', '2019-09-01 8:00:00', 1, 1000);
INSERT INTO Dati_Cibo
VALUES('aaa0120', '2019-09-01 8:30:00', 1, 700);
INSERT INTO Dati_Cibo
VALUES('aaa0120', '2019-09-01 9:00:00', 1, 700);
INSERT INTO Dati_Cibo
VALUES('aaa0120', '2019-09-01 9:30:00', 1, 650);
INSERT INTO Dati_Cibo
VALUES('aaa0120', '2019-09-01 10:00:00', 1, 1500);
INSERT INTO Dati_Cibo
VALUES('aaa0120', '2019-09-01 10:30:00', 1, 1100);
INSERT INTO Dati_Cibo
VALUES('aaa0120', '2019-09-01 11:00:00', 1, 1000);
INSERT INTO Dati_Cibo
VALUES('aaa0120', '2019-09-01 11:30:00', 1, 600);
INSERT INTO Dati_Cibo
VALUES('aaa0120', '2019-09-01 12:00:00', 1, 600);
INSERT INTO Dati_Cibo
VALUES('aaa0120', '2019-09-01 12:30:00', 1, 350);
INSERT INTO Dati_Cibo
VALUES('aaa0120', '2019-09-01 13:00:00', 3, 1500);
INSERT INTO Dati_Cibo
VALUES('aaa0121', '2019-09-01 7:00:00', 1, 1500);
INSERT INTO Dati_Cibo
VALUES('aaa0121', '2019-09-01 7:30:00', 1, 1300);
INSERT INTO Dati_Cibo
VALUES('aaa0121', '2019-09-01 8:00:00', 1, 1000);
INSERT INTO Dati_Cibo
VALUES('aaa0121', '2019-09-01 8:30:00', 1, 400);
INSERT INTO Dati_Cibo
VALUES('aaa0121', '2019-09-01 9:00:00', 1, 400);
INSERT INTO Dati_Cibo
VALUES('aaa0121', '2019-09-01 9:30:00', 1, 350);
INSERT INTO Dati_Cibo
VALUES('aaa0121', '2019-09-01 10:00:00', 2, 1500);
INSERT INTO Dati_Cibo
VALUES('aaa0121', '2019-09-01 10:30:00', 2, 1100);
INSERT INTO Dati_Cibo
VALUES('aaa0121', '2019-09-01 11:00:00', 2, 1000);
INSERT INTO Dati_Cibo
VALUES('aaa0121', '2019-09-01 11:30:00', 2, 600);
INSERT INTO Dati_Cibo
VALUES('aaa0121', '2019-09-01 12:00:00', 2, 600);
INSERT INTO Dati_Cibo
VALUES('aaa0121', '2019-09-01 12:30:00', 2, 350);
INSERT INTO Dati_Cibo
VALUES('aaa0121', '2019-09-01 13:00:00', 2, 1500);
INSERT INTO Dati_Cibo
VALUES('aaa0122', '2019-09-01 7:00:00', 1, 1500);
INSERT INTO Dati_Cibo
VALUES('aaa0122', '2019-09-01 7:30:00', 1, 1200);
INSERT INTO Dati_Cibo
VALUES('aaa0122', '2019-09-01 8:00:00', 1, 1000);
INSERT INTO Dati_Cibo
VALUES('aaa0122', '2019-09-01 8:30:00', 1, 700);
INSERT INTO Dati_Cibo
VALUES('aaa0122', '2019-09-01 9:00:00', 1, 700);
INSERT INTO Dati_Cibo
VALUES('aaa0122', '2019-09-01 9:30:00', 1, 650);
INSERT INTO Dati_Cibo
VALUES('aaa0122', '2019-09-01 10:00:00', 3, 1500);
INSERT INTO Dati_Cibo
VALUES('aaa0122', '2019-09-01 10:30:00', 3, 1100);
INSERT INTO Dati_Cibo
VALUES('aaa0122', '2019-09-01 11:00:00', 3, 1000);
INSERT INTO Dati_Cibo
VALUES('aaa0122', '2019-09-01 11:30:00', 3, 600);
INSERT INTO Dati_Cibo
VALUES('aaa0122', '2019-09-01 12:00:00', 3, 600);
INSERT INTO Dati_Cibo
VALUES('aaa0122', '2019-09-01 12:30:00', 3, 350);
INSERT INTO Dati_Cibo
VALUES('aaa0122', '2019-09-01 13:00:00', 3, 1500);
INSERT INTO Dati_Cibo
VALUES('aaa0123', '2019-09-01 7:00:00', 1, 1500);
INSERT INTO Dati_Cibo
VALUES('aaa0123', '2019-09-01 7:30:00', 1, 1500);
INSERT INTO Dati_Cibo
VALUES('aaa0123', '2019-09-01 8:00:00', 1, 1500);
INSERT INTO Dati_Cibo
VALUES('aaa0123', '2019-09-01 8:30:00', 1, 1500);
INSERT INTO Dati_Cibo
VALUES('aaa0123', '2019-09-01 9:00:00', 1, 1500);
INSERT INTO Dati_Cibo
VALUES('aaa0123', '2019-09-01 9:30:00', 1, 1500);
INSERT INTO Dati_Cibo
VALUES('aaa0123', '2019-09-01 10:00:00', 1, 1500);
INSERT INTO Dati_Cibo
VALUES('aaa0123', '2019-09-01 10:30:00', 1, 1500);
INSERT INTO Dati_Cibo
VALUES('aaa0123', '2019-09-01 11:00:00', 1, 1500);
INSERT INTO Dati_Cibo
VALUES('aaa0123', '2019-09-01 11:30:00', 1, 1500);
INSERT INTO Dati_Cibo
VALUES('aaa0123', '2019-09-01 12:00:00', 1, 1500);
INSERT INTO Dati_Cibo
VALUES('aaa0123', '2019-09-01 12:30:00', 1, 1500);
INSERT INTO Dati_Cibo
VALUES('aaa0123', '2019-09-01 13:00:00', 3, 1500);
INSERT INTO Dati_Cibo
VALUES('aaa0240', '2019-09-01 7:00:00', 1, 1500);
INSERT INTO Dati_Cibo
VALUES('aaa0240', '2019-09-01 7:30:00', 1, 1200);
INSERT INTO Dati_Cibo
VALUES('aaa0240', '2019-09-01 8:00:00', 1, 1000);
INSERT INTO Dati_Cibo
VALUES('aaa0240', '2019-09-01 8:30:00', 1, 700);
INSERT INTO Dati_Cibo
VALUES('aaa0240', '2019-09-01 9:00:00', 1, 700);
INSERT INTO Dati_Cibo
VALUES('aaa0240', '2019-09-01 9:30:00', 1, 650);
INSERT INTO Dati_Cibo
VALUES('aaa0240', '2019-09-01 10:00:00', 1, 1500);
INSERT INTO Dati_Cibo
VALUES('aaa0240', '2019-09-01 10:30:00', 1, 1100);
INSERT INTO Dati_Cibo
VALUES('aaa0240', '2019-09-01 11:00:00', 1, 1000);
INSERT INTO Dati_Cibo
VALUES('aaa0240', '2019-09-01 11:30:00', 1, 600);
INSERT INTO Dati_Cibo
VALUES('aaa0240', '2019-09-01 12:00:00', 1, 600);
INSERT INTO Dati_Cibo
VALUES('aaa0240', '2019-09-01 12:30:00', 1, 350);
INSERT INTO Dati_Cibo
VALUES('aaa0240', '2019-09-01 13:00:00', 3, 1500);
INSERT INTO Dati_Cibo
VALUES('aaa0241', '2019-09-01 7:00:00', 1, 1500);
INSERT INTO Dati_Cibo
VALUES('aaa0241', '2019-09-01 7:30:00', 1, 1300);
INSERT INTO Dati_Cibo
VALUES('aaa0241', '2019-09-01 8:00:00', 1, 1000);
INSERT INTO Dati_Cibo
VALUES('aaa0241', '2019-09-01 8:30:00', 1, 400);
INSERT INTO Dati_Cibo
VALUES('aaa0241', '2019-09-01 9:00:00', 1, 400);
INSERT INTO Dati_Cibo
VALUES('aaa0241', '2019-09-01 9:30:00', 1, 350);
INSERT INTO Dati_Cibo
VALUES('aaa0241', '2019-09-01 10:00:00', 2, 1500);
INSERT INTO Dati_Cibo
VALUES('aaa0241', '2019-09-01 10:30:00', 2, 1100);
INSERT INTO Dati_Cibo
VALUES('aaa0241', '2019-09-01 11:00:00', 2, 1000);
INSERT INTO Dati_Cibo
VALUES('aaa0241', '2019-09-01 11:30:00', 2, 600);
INSERT INTO Dati_Cibo
VALUES('aaa0241', '2019-09-01 12:00:00', 2, 600);
INSERT INTO Dati_Cibo
VALUES('aaa0241', '2019-09-01 12:30:00', 2, 350);
INSERT INTO Dati_Cibo
VALUES('aaa0241', '2019-09-01 13:00:00', 2, 1500);
INSERT INTO Dati_Cibo
VALUES('aaa0242', '2019-09-01 7:00:00', 1, 1500);
INSERT INTO Dati_Cibo
VALUES('aaa0242', '2019-09-01 7:30:00', 1, 1200);
INSERT INTO Dati_Cibo
VALUES('aaa0242', '2019-09-01 8:00:00', 1, 1000);
INSERT INTO Dati_Cibo
VALUES('aaa0242', '2019-09-01 8:30:00', 1, 700);
INSERT INTO Dati_Cibo
VALUES('aaa0242', '2019-09-01 9:00:00', 1, 700);
INSERT INTO Dati_Cibo
VALUES('aaa0242', '2019-09-01 9:30:00', 1, 650);
INSERT INTO Dati_Cibo
VALUES('aaa0242', '2019-09-01 10:00:00', 3, 1500);
INSERT INTO Dati_Cibo
VALUES('aaa0242', '2019-09-01 10:30:00', 3, 1100);
INSERT INTO Dati_Cibo
VALUES('aaa0242', '2019-09-01 11:00:00', 3, 1000);
INSERT INTO Dati_Cibo
VALUES('aaa0242', '2019-09-01 11:30:00', 3, 600);
INSERT INTO Dati_Cibo
VALUES('aaa0242', '2019-09-01 12:00:00', 3, 600);
INSERT INTO Dati_Cibo
VALUES('aaa0242', '2019-09-01 12:30:00', 3, 350);
INSERT INTO Dati_Cibo
VALUES('aaa0242', '2019-09-01 13:00:00', 3, 1500);
INSERT INTO Dati_Cibo
VALUES('aaa0243', '2019-09-01 7:00:00', 1, 1500);
INSERT INTO Dati_Cibo
VALUES('aaa0243', '2019-09-01 7:30:00', 1, 1500);
INSERT INTO Dati_Cibo
VALUES('aaa0243', '2019-09-01 8:00:00', 1, 1500);
INSERT INTO Dati_Cibo
VALUES('aaa0243', '2019-09-01 8:30:00', 1, 1500);
INSERT INTO Dati_Cibo
VALUES('aaa0243', '2019-09-01 9:00:00', 1, 1500);
INSERT INTO Dati_Cibo
VALUES('aaa0243', '2019-09-01 9:30:00', 1, 1500);
INSERT INTO Dati_Cibo
VALUES('aaa0243', '2019-09-01 10:00:00', 1, 1500);
INSERT INTO Dati_Cibo
VALUES('aaa0243', '2019-09-01 10:30:00', 1, 1500);
INSERT INTO Dati_Cibo
VALUES('aaa0243', '2019-09-01 11:00:00', 1, 1500);
INSERT INTO Dati_Cibo
VALUES('aaa0243', '2019-09-01 11:30:00', 1, 1500);
INSERT INTO Dati_Cibo
VALUES('aaa0243', '2019-09-01 12:00:00', 1, 1500);
INSERT INTO Dati_Cibo
VALUES('aaa0243', '2019-09-01 12:30:00', 1, 1500);
INSERT INTO Dati_Cibo
VALUES('aaa0243', '2019-09-01 13:00:00', 3, 1500);

-- contenuto mangiatoia recente
INSERT INTO Contenuto_Mangiatoia_Recente
VALUES('aaa0243', '2019-09-01 10:00:00');
INSERT INTO Contenuto_Mangiatoia_Recente
VALUES('aaa0243', '2019-09-01 10:30:00');
INSERT INTO Contenuto_Mangiatoia_Recente
VALUES('aaa0243', '2019-09-01 11:00:00');
INSERT INTO Contenuto_Mangiatoia_Recente
VALUES('aaa0243', '2019-09-01 11:30:00');
INSERT INTO Contenuto_Mangiatoia_Recente
VALUES('aaa0243', '2019-09-01 12:00:00');
INSERT INTO Contenuto_Mangiatoia_Recente
VALUES('aaa0243', '2019-09-01 12:30:00');
INSERT INTO Contenuto_Mangiatoia_Recente
VALUES('aaa0243', '2019-09-01 13:00:00');
INSERT INTO Contenuto_Mangiatoia_Recente
VALUES('aaa0000', '2019-09-01 10:00:00');
INSERT INTO Contenuto_Mangiatoia_Recente
VALUES('aaa0000', '2019-09-01 10:30:00');
INSERT INTO Contenuto_Mangiatoia_Recente
VALUES('aaa0000', '2019-09-01 11:00:00');
INSERT INTO Contenuto_Mangiatoia_Recente
VALUES('aaa0000', '2019-09-01 11:30:00');
INSERT INTO Contenuto_Mangiatoia_Recente
VALUES('aaa0000', '2019-09-01 12:00:00');
INSERT INTO Contenuto_Mangiatoia_Recente
VALUES('aaa0000', '2019-09-01 12:30:00');
INSERT INTO Contenuto_Mangiatoia_Recente
VALUES('aaa0000', '2019-09-01 13:00:00');
INSERT INTO Contenuto_Mangiatoia_Recente
VALUES('aaa0001', '2019-09-01 10:00:00');
INSERT INTO Contenuto_Mangiatoia_Recente
VALUES('aaa0001', '2019-09-01 10:30:00');
INSERT INTO Contenuto_Mangiatoia_Recente
VALUES('aaa0001', '2019-09-01 11:00:00');
INSERT INTO Contenuto_Mangiatoia_Recente
VALUES('aaa0001', '2019-09-01 11:30:00');
INSERT INTO Contenuto_Mangiatoia_Recente
VALUES('aaa0001', '2019-09-01 12:00:00');
INSERT INTO Contenuto_Mangiatoia_Recente
VALUES('aaa0001', '2019-09-01 12:30:00');
INSERT INTO Contenuto_Mangiatoia_Recente
VALUES('aaa0001', '2019-09-01 13:00:00');
INSERT INTO Contenuto_Mangiatoia_Recente
VALUES('aaa0002', '2019-09-01 10:00:00');
INSERT INTO Contenuto_Mangiatoia_Recente
VALUES('aaa0002', '2019-09-01 10:30:00');
INSERT INTO Contenuto_Mangiatoia_Recente
VALUES('aaa0002', '2019-09-01 11:00:00');
INSERT INTO Contenuto_Mangiatoia_Recente
VALUES('aaa0002', '2019-09-01 11:30:00');
INSERT INTO Contenuto_Mangiatoia_Recente
VALUES('aaa0002', '2019-09-01 12:00:00');
INSERT INTO Contenuto_Mangiatoia_Recente
VALUES('aaa0002', '2019-09-01 12:30:00');
INSERT INTO Contenuto_Mangiatoia_Recente
VALUES('aaa0002', '2019-09-01 13:00:00');
INSERT INTO Contenuto_Mangiatoia_Recente
VALUES('aaa0003', '2019-09-01 10:00:00');
INSERT INTO Contenuto_Mangiatoia_Recente
VALUES('aaa0003', '2019-09-01 10:30:00');
INSERT INTO Contenuto_Mangiatoia_Recente
VALUES('aaa0003', '2019-09-01 11:00:00');
INSERT INTO Contenuto_Mangiatoia_Recente
VALUES('aaa0003', '2019-09-01 11:30:00');
INSERT INTO Contenuto_Mangiatoia_Recente
VALUES('aaa0003', '2019-09-01 12:00:00');
INSERT INTO Contenuto_Mangiatoia_Recente
VALUES('aaa0003', '2019-09-01 12:30:00');
INSERT INTO Contenuto_Mangiatoia_Recente
VALUES('aaa0003', '2019-09-01 13:00:00');
INSERT INTO Contenuto_Mangiatoia_Recente
VALUES('aaa0120', '2019-09-01 10:00:00');
INSERT INTO Contenuto_Mangiatoia_Recente
VALUES('aaa0120', '2019-09-01 10:30:00');
INSERT INTO Contenuto_Mangiatoia_Recente
VALUES('aaa0120', '2019-09-01 11:00:00');
INSERT INTO Contenuto_Mangiatoia_Recente
VALUES('aaa0120', '2019-09-01 11:30:00');
INSERT INTO Contenuto_Mangiatoia_Recente
VALUES('aaa0120', '2019-09-01 12:00:00');
INSERT INTO Contenuto_Mangiatoia_Recente
VALUES('aaa0120', '2019-09-01 12:30:00');
INSERT INTO Contenuto_Mangiatoia_Recente
VALUES('aaa0120', '2019-09-01 13:00:00');
INSERT INTO Contenuto_Mangiatoia_Recente
VALUES('aaa0121', '2019-09-01 10:00:00');
INSERT INTO Contenuto_Mangiatoia_Recente
VALUES('aaa0121', '2019-09-01 10:30:00');
INSERT INTO Contenuto_Mangiatoia_Recente
VALUES('aaa0121', '2019-09-01 11:00:00');
INSERT INTO Contenuto_Mangiatoia_Recente
VALUES('aaa0121', '2019-09-01 11:30:00');
INSERT INTO Contenuto_Mangiatoia_Recente
VALUES('aaa0121', '2019-09-01 12:00:00');
INSERT INTO Contenuto_Mangiatoia_Recente
VALUES('aaa0121', '2019-09-01 12:30:00');
INSERT INTO Contenuto_Mangiatoia_Recente
VALUES('aaa0121', '2019-09-01 13:00:00');
INSERT INTO Contenuto_Mangiatoia_Recente
VALUES('aaa0122', '2019-09-01 10:00:00');
INSERT INTO Contenuto_Mangiatoia_Recente
VALUES('aaa0122', '2019-09-01 10:30:00');
INSERT INTO Contenuto_Mangiatoia_Recente
VALUES('aaa0122', '2019-09-01 11:00:00');
INSERT INTO Contenuto_Mangiatoia_Recente
VALUES('aaa0122', '2019-09-01 11:30:00');
INSERT INTO Contenuto_Mangiatoia_Recente
VALUES('aaa0122', '2019-09-01 12:00:00');
INSERT INTO Contenuto_Mangiatoia_Recente
VALUES('aaa0122', '2019-09-01 12:30:00');
INSERT INTO Contenuto_Mangiatoia_Recente
VALUES('aaa0122', '2019-09-01 13:00:00');
INSERT INTO Contenuto_Mangiatoia_Recente
VALUES('aaa0123', '2019-09-01 10:00:00');
INSERT INTO Contenuto_Mangiatoia_Recente
VALUES('aaa0123', '2019-09-01 10:30:00');
INSERT INTO Contenuto_Mangiatoia_Recente
VALUES('aaa0123', '2019-09-01 11:00:00');
INSERT INTO Contenuto_Mangiatoia_Recente
VALUES('aaa0123', '2019-09-01 11:30:00');
INSERT INTO Contenuto_Mangiatoia_Recente
VALUES('aaa0123', '2019-09-01 12:00:00');
INSERT INTO Contenuto_Mangiatoia_Recente
VALUES('aaa0123', '2019-09-01 12:30:00');
INSERT INTO Contenuto_Mangiatoia_Recente
VALUES('aaa0123', '2019-09-01 13:00:00');
INSERT INTO Contenuto_Mangiatoia_Recente
VALUES('aaa0240', '2019-09-01 10:00:00');
INSERT INTO Contenuto_Mangiatoia_Recente
VALUES('aaa0240', '2019-09-01 10:30:00');
INSERT INTO Contenuto_Mangiatoia_Recente
VALUES('aaa0240', '2019-09-01 11:00:00');
INSERT INTO Contenuto_Mangiatoia_Recente
VALUES('aaa0240', '2019-09-01 11:30:00');
INSERT INTO Contenuto_Mangiatoia_Recente
VALUES('aaa0240', '2019-09-01 12:00:00');
INSERT INTO Contenuto_Mangiatoia_Recente
VALUES('aaa0240', '2019-09-01 12:30:00');
INSERT INTO Contenuto_Mangiatoia_Recente
VALUES('aaa0240', '2019-09-01 13:00:00');
INSERT INTO Contenuto_Mangiatoia_Recente
VALUES('aaa0242', '2019-09-01 10:00:00');
INSERT INTO Contenuto_Mangiatoia_Recente
VALUES('aaa0242', '2019-09-01 10:30:00');
INSERT INTO Contenuto_Mangiatoia_Recente
VALUES('aaa0242', '2019-09-01 11:00:00');
INSERT INTO Contenuto_Mangiatoia_Recente
VALUES('aaa0242', '2019-09-01 11:30:00');
INSERT INTO Contenuto_Mangiatoia_Recente
VALUES('aaa0242', '2019-09-01 12:00:00');
INSERT INTO Contenuto_Mangiatoia_Recente
VALUES('aaa0242', '2019-09-01 12:30:00');
INSERT INTO Contenuto_Mangiatoia_Recente
VALUES('aaa0242', '2019-09-01 13:00:00');
INSERT INTO Contenuto_Mangiatoia_Recente
VALUES('aaa0241', '2019-09-01 10:00:00');
INSERT INTO Contenuto_Mangiatoia_Recente
VALUES('aaa0241', '2019-09-01 10:30:00');
INSERT INTO Contenuto_Mangiatoia_Recente
VALUES('aaa0241', '2019-09-01 11:00:00');
INSERT INTO Contenuto_Mangiatoia_Recente
VALUES('aaa0241', '2019-09-01 11:30:00');
INSERT INTO Contenuto_Mangiatoia_Recente
VALUES('aaa0241', '2019-09-01 12:00:00');
INSERT INTO Contenuto_Mangiatoia_Recente
VALUES('aaa0241', '2019-09-01 12:30:00');
INSERT INTO Contenuto_Mangiatoia_Recente
VALUES('aaa0241', '2019-09-01 13:00:00');

-- singolo abbeveratoio
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0000', 'aaa0000' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0001', 'aaa0000' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0002', 'aaa0000' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0003', 'aaa0000' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0004', 'aaa0000' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0005', 'aaa0000' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0006', 'aaa0000' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0007', 'aaa0000' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0008', 'aaa0000' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0009', 'aaa0000' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0010', 'aaa0000' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0011', 'aaa0000' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0012', 'aaa0000' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0013', 'aaa0000' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0014', 'aaa0000' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0015', 'aaa0001' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0016', 'aaa0001' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0017', 'aaa0001' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0018', 'aaa0001' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0019', 'aaa0001' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0020', 'aaa0001' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0021', 'aaa0001' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0022', 'aaa0001' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0023', 'aaa0001' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0024', 'aaa0001' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0025', 'aaa0001' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0026', 'aaa0001' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0027', 'aaa0001' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0028', 'aaa0001' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0029', 'aaa0001' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0030', 'aaa0002' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0031', 'aaa0002' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0032', 'aaa0002' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0033', 'aaa0002' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0034', 'aaa0002' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0035', 'aaa0002' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0036', 'aaa0002' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0037', 'aaa0002' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0038', 'aaa0002' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0039', 'aaa0002' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0040', 'aaa0002' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0041', 'aaa0002' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0042', 'aaa0002' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0043', 'aaa0002' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0044', 'aaa0002' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0045', 'aaa0003' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0046', 'aaa0003' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0047', 'aaa0003' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0048', 'aaa0003' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0049', 'aaa0003' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0050', 'aaa0003' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0051', 'aaa0003' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0052', 'aaa0003' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0053', 'aaa0003' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0054', 'aaa0003' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0055', 'aaa0003' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0056', 'aaa0003' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0057', 'aaa0003' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0058', 'aaa0003' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0059', 'aaa0003' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0060', 'aaa0004' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0061', 'aaa0004' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0062', 'aaa0004' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0063', 'aaa0004' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0064', 'aaa0004' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0065', 'aaa0004' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0066', 'aaa0004' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0067', 'aaa0004' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0068', 'aaa0004' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0069', 'aaa0004' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0070', 'aaa0004' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0071', 'aaa0004' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0072', 'aaa0004' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0073', 'aaa0004' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0074', 'aaa0004' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0075', 'aaa0005' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0076', 'aaa0005' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0077', 'aaa0005' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0078', 'aaa0005' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0079', 'aaa0005' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0080', 'aaa0005' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0081', 'aaa0005' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0082', 'aaa0005' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0083', 'aaa0005' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0084', 'aaa0005' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0085', 'aaa0005' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0086', 'aaa0005' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0087', 'aaa0005' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0088', 'aaa0005' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0089', 'aaa0005' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0090', 'aaa0006' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0091', 'aaa0006' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0092', 'aaa0006' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0093', 'aaa0006' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0094', 'aaa0006' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0095', 'aaa0006' );
 INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0096', 'aaa0006' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0097', 'aaa0006' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0098', 'aaa0006' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0099', 'aaa0006' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0100', 'aaa0006' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0101', 'aaa0006' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0102', 'aaa0006' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0103', 'aaa0006' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0104', 'aaa0006' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0105', 'aaa0007' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0106', 'aaa0007' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0107', 'aaa0007' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0108', 'aaa0007' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0109', 'aaa0007' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0110', 'aaa0007' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0111', 'aaa0007' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0112', 'aaa0007' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0113', 'aaa0007' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0114', 'aaa0007' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0115', 'aaa0007' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0116', 'aaa0007' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0117', 'aaa0007' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0118', 'aaa0007' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0119', 'aaa0007' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0120', 'aaa0008' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0121', 'aaa0008' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0122', 'aaa0008' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0123', 'aaa0008' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0124', 'aaa0008' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0125', 'aaa0008' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0126', 'aaa0008' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0127', 'aaa0008' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0128', 'aaa0008' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0129', 'aaa0008' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0130', 'aaa0008' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0131', 'aaa0008' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0132', 'aaa0008' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0133', 'aaa0008' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0134', 'aaa0008' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0135', 'aaa0009' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0136', 'aaa0009' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0137', 'aaa0009' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0138', 'aaa0009' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0139', 'aaa0009' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0140', 'aaa0009' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0141', 'aaa0009' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0142', 'aaa0009' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0143', 'aaa0009' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0144', 'aaa0009' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0145', 'aaa0009' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0146', 'aaa0009' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0147', 'aaa0009' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0148', 'aaa0009' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0149', 'aaa0009' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0150', 'aaa0010' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0151', 'aaa0010' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0152', 'aaa0010' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0153', 'aaa0010' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0154', 'aaa0010' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0155', 'aaa0010' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0156', 'aaa0010' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0157', 'aaa0010' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0158', 'aaa0010' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0159', 'aaa0010' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0160', 'aaa0010' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0161', 'aaa0010' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0162', 'aaa0010' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0163', 'aaa0010' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0164', 'aaa0010' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0165', 'aaa0011' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0166', 'aaa0011' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0167', 'aaa0011' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0168', 'aaa0011' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0169', 'aaa0011' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0170', 'aaa0011' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0171', 'aaa0011' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0172', 'aaa0011' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0173', 'aaa0011' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0174', 'aaa0011' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0175', 'aaa0011' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0176', 'aaa0011' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0177', 'aaa0011' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0178', 'aaa0011' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0179', 'aaa0011' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0180', 'aaa0012' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0181', 'aaa0012' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0182', 'aaa0012' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0183', 'aaa0012' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0184', 'aaa0012' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0185', 'aaa0012' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0186', 'aaa0012' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0187', 'aaa0012' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0188', 'aaa0012' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0189', 'aaa0012' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0190', 'aaa0012' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0191', 'aaa0012' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0192', 'aaa0012' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0193', 'aaa0012' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0194', 'aaa0012' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0195', 'aaa0013' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0196', 'aaa0013' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0197', 'aaa0013' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0198', 'aaa0013' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0199', 'aaa0013' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0200', 'aaa0013' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0201', 'aaa0013' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0202', 'aaa0013' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0203', 'aaa0013' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0204', 'aaa0013' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0205', 'aaa0013' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0206', 'aaa0013' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0207', 'aaa0013' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0208', 'aaa0013' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0209', 'aaa0013' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0210', 'aaa0014' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0211', 'aaa0014' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0212', 'aaa0014' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0213', 'aaa0014' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0214', 'aaa0014' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0215', 'aaa0014' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0216', 'aaa0014' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0217', 'aaa0014' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0218', 'aaa0014' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0219', 'aaa0014' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0220', 'aaa0014' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0221', 'aaa0014' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0222', 'aaa0014' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0223', 'aaa0014' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0224', 'aaa0014' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0225', 'aaa0015' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0226', 'aaa0015' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0227', 'aaa0015' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0228', 'aaa0015' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0229', 'aaa0015' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0230', 'aaa0015' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0231', 'aaa0015' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0232', 'aaa0015' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0233', 'aaa0015' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0234', 'aaa0015' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0235', 'aaa0015' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0236', 'aaa0015' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0237', 'aaa0015' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0238', 'aaa0015' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0239', 'aaa0015' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0240', 'aaa0016' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0241', 'aaa0016' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0242', 'aaa0016' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0243', 'aaa0016' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0244', 'aaa0016' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0245', 'aaa0016' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0246', 'aaa0016' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0247', 'aaa0016' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0248', 'aaa0016' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0249', 'aaa0016' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0250', 'aaa0016' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0251', 'aaa0016' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0252', 'aaa0016' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0253', 'aaa0016' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0254', 'aaa0016' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0255', 'aaa0017' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0256', 'aaa0017' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0257', 'aaa0017' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0258', 'aaa0017' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0259', 'aaa0017' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0260', 'aaa0017' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0261', 'aaa0017' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0262', 'aaa0017' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0263', 'aaa0017' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0264', 'aaa0017' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0265', 'aaa0017' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0266', 'aaa0017' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0267', 'aaa0017' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0268', 'aaa0017' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0269', 'aaa0017' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0270', 'aaa0018' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0271', 'aaa0018' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0272', 'aaa0018' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0273', 'aaa0018' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0274', 'aaa0018' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0275', 'aaa0018' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0276', 'aaa0018' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0277', 'aaa0018' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0278', 'aaa0018' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0279', 'aaa0018' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0280', 'aaa0018' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0281', 'aaa0018' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0282', 'aaa0018' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0283', 'aaa0018' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0284', 'aaa0018' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0285', 'aaa0019' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0286', 'aaa0019' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0287', 'aaa0019' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0288', 'aaa0019' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0289', 'aaa0019' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0291', 'aaa0019' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0292', 'aaa0019' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0293', 'aaa0019' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0294', 'aaa0019' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0295', 'aaa0019' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0296', 'aaa0019' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0297', 'aaa0019' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0298', 'aaa0019' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0299', 'aaa0019' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0300', 'aaa0020' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0301', 'aaa0020' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0302', 'aaa0020' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0303', 'aaa0020' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0304', 'aaa0020' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0305', 'aaa0020' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0306', 'aaa0020' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0307', 'aaa0020' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0308', 'aaa0020' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0309', 'aaa0020' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0310', 'aaa0020' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0311', 'aaa0020' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0312', 'aaa0020' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0313', 'aaa0020' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0314', 'aaa0020' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0315', 'aaa0021' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0316', 'aaa0021' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0317', 'aaa0021' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0318', 'aaa0021' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0319', 'aaa0021' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0320', 'aaa0021' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0321', 'aaa0021' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0322', 'aaa0021' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0323', 'aaa0021' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0324', 'aaa0021' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0325', 'aaa0021' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0326', 'aaa0021' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0327', 'aaa0021' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0328', 'aaa0021' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0329', 'aaa0021' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0330', 'aaa0022' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0331', 'aaa0022' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0332', 'aaa0022' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0333', 'aaa0022' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0334', 'aaa0022' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0335', 'aaa0022' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0336', 'aaa0022' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0337', 'aaa0022' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0338', 'aaa0022' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0339', 'aaa0022' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0340', 'aaa0022' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0341', 'aaa0022' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0342', 'aaa0022' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0343', 'aaa0022' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0344', 'aaa0022' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0345', 'aaa0023' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0346', 'aaa0023' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0347', 'aaa0023' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0348', 'aaa0023' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0349', 'aaa0023' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0350', 'aaa0023' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0351', 'aaa0023' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0352', 'aaa0023' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0353', 'aaa0023' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0354', 'aaa0023' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0355', 'aaa0023' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0356', 'aaa0023' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0357', 'aaa0023' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0358', 'aaa0023' );
INSERT INTO Singolo_Abbeveratoio
VALUES ('aaa0359', 'aaa0023' );

-- DATI ACQUA 
INSERT INTO Dati_Acqua
VALUES('aaa0000', '2019-09-01 7:00:00', 1500);
INSERT INTO Dati_Acqua
VALUES('aaa0000', '2019-09-01 7:30:00', 1200);
INSERT INTO Dati_Acqua
VALUES('aaa0000', '2019-09-01 8:00:00',  1000);
INSERT INTO Dati_Acqua
VALUES('aaa0000', '2019-09-01 8:30:00', 700);
INSERT INTO Dati_Acqua
VALUES('aaa0000', '2019-09-01 9:00:00',  700);
INSERT INTO Dati_Acqua
VALUES('aaa0000', '2019-09-01 9:30:00',  650);
INSERT INTO Dati_Acqua
VALUES('aaa0000', '2019-09-01 10:00:00',  1500);
INSERT INTO Dati_Acqua
VALUES('aaa0000', '2019-09-01 10:30:00',  1100);
INSERT INTO Dati_Acqua
VALUES('aaa0000', '2019-09-01 11:00:00',  1000);
INSERT INTO Dati_Acqua
VALUES('aaa0000', '2019-09-01 11:30:00',  600);
INSERT INTO Dati_Acqua
VALUES('aaa0000', '2019-09-01 12:00:00',  600);
INSERT INTO Dati_Acqua
VALUES('aaa0000', '2019-09-01 12:30:00',  350);
INSERT INTO Dati_Acqua
VALUES('aaa0000', '2019-09-01 13:00:00',  1500);
INSERT INTO Dati_Acqua
VALUES('aaa0001', '2019-09-01 7:00:00',  1500);
INSERT INTO Dati_Acqua
VALUES('aaa0001', '2019-09-01 7:30:00',  1300);
INSERT INTO Dati_Acqua
VALUES('aaa0001', '2019-09-01 8:00:00',  1000);
INSERT INTO Dati_Acqua
VALUES('aaa0001', '2019-09-01 8:30:00',  400);
INSERT INTO Dati_Acqua
VALUES('aaa0001', '2019-09-01 9:00:00', 400);
INSERT INTO Dati_Acqua
VALUES('aaa0001', '2019-09-01 9:30:00',  350);
INSERT INTO Dati_Acqua
VALUES('aaa0001', '2019-09-01 10:00:00', 1500);
INSERT INTO Dati_Acqua
VALUES('aaa0001', '2019-09-01 10:30:00',  1100);
INSERT INTO Dati_Acqua
VALUES('aaa0001', '2019-09-01 11:00:00',  1000);
INSERT INTO Dati_Acqua
VALUES('aaa0001', '2019-09-01 11:30:00',  600);
INSERT INTO Dati_Acqua
VALUES('aaa0001', '2019-09-01 12:00:00',  600);
INSERT INTO Dati_Acqua
VALUES('aaa0001', '2019-09-01 12:30:00',  350);
INSERT INTO Dati_Acqua
VALUES('aaa0001', '2019-09-01 13:00:00',  1500);
INSERT INTO Dati_Acqua
VALUES('aaa0002', '2019-09-01 7:00:00', 1500);
INSERT INTO Dati_Acqua
VALUES('aaa0002', '2019-09-01 7:30:00',  1200);
INSERT INTO Dati_Acqua
VALUES('aaa0002', '2019-09-01 8:00:00',  1000);
INSERT INTO Dati_Acqua
VALUES('aaa0002', '2019-09-01 8:30:00',  700);
INSERT INTO Dati_Acqua
VALUES('aaa0002', '2019-09-01 9:00:00', 700);
INSERT INTO Dati_Acqua
VALUES('aaa0002', '2019-09-01 9:30:00', 650);
INSERT INTO Dati_Acqua
VALUES('aaa0002', '2019-09-01 10:00:00',  1500);
INSERT INTO Dati_Acqua
VALUES('aaa0002', '2019-09-01 10:30:00',  1100);
INSERT INTO Dati_Acqua
VALUES('aaa0002', '2019-09-01 11:00:00',  1000);
INSERT INTO Dati_Acqua
VALUES('aaa0002', '2019-09-01 11:30:00',  600);
INSERT INTO Dati_Acqua
VALUES('aaa0002', '2019-09-01 12:00:00',  600);
INSERT INTO Dati_Acqua
VALUES('aaa0002', '2019-09-01 12:30:00',  350);
INSERT INTO Dati_Acqua
VALUES('aaa0002', '2019-09-01 13:00:00', 1500);
INSERT INTO Dati_Acqua
VALUES('aaa0003', '2019-09-01 7:00:00',  1500);
INSERT INTO Dati_Acqua
VALUES('aaa0003', '2019-09-01 7:30:00',  1500);
INSERT INTO Dati_Acqua
VALUES('aaa0003', '2019-09-01 8:00:00',  1500);
INSERT INTO Dati_Acqua
VALUES('aaa0003', '2019-09-01 8:30:00',  1500);
INSERT INTO Dati_Acqua
VALUES('aaa0003', '2019-09-01 9:00:00',  1500);
INSERT INTO Dati_Acqua
VALUES('aaa0003', '2019-09-01 9:30:00', 1500);
INSERT INTO Dati_Acqua
VALUES('aaa0003', '2019-09-01 10:00:00', 1500);
INSERT INTO Dati_Acqua
VALUES('aaa0003', '2019-09-01 10:30:00',  1500);
INSERT INTO Dati_Acqua
VALUES('aaa0003', '2019-09-01 11:00:00',  1500);
INSERT INTO Dati_Acqua
VALUES('aaa0003', '2019-09-01 11:30:00',  1500);
INSERT INTO Dati_Acqua
VALUES('aaa0003', '2019-09-01 12:00:00',  1500);
INSERT INTO Dati_Acqua
VALUES('aaa0003', '2019-09-01 12:30:00',  1500);
INSERT INTO Dati_Acqua
VALUES('aaa0003', '2019-09-01 13:00:00',  1500);
INSERT INTO Dati_Acqua
VALUES('aaa0120', '2019-09-01 7:00:00',  1500);
INSERT INTO Dati_Acqua
VALUES('aaa0120', '2019-09-01 7:30:00',  1200);
INSERT INTO Dati_Acqua
VALUES('aaa0120', '2019-09-01 8:00:00',  1000);
INSERT INTO Dati_Acqua
VALUES('aaa0120', '2019-09-01 8:30:00',  700);
INSERT INTO Dati_Acqua
VALUES('aaa0120', '2019-09-01 9:00:00',  700);
INSERT INTO Dati_Acqua
VALUES('aaa0120', '2019-09-01 9:30:00',  650);
INSERT INTO Dati_Acqua
VALUES('aaa0120', '2019-09-01 10:00:00',  1500);
INSERT INTO Dati_Acqua
VALUES('aaa0120', '2019-09-01 10:30:00',  1100);
INSERT INTO Dati_Acqua
VALUES('aaa0120', '2019-09-01 11:00:00',  1000);
INSERT INTO Dati_Acqua
VALUES('aaa0120', '2019-09-01 11:30:00',  600);
INSERT INTO Dati_Acqua
VALUES('aaa0120', '2019-09-01 12:00:00', 600);
INSERT INTO Dati_Acqua
VALUES('aaa0120', '2019-09-01 12:30:00',  350);
INSERT INTO Dati_Acqua
VALUES('aaa0120', '2019-09-01 13:00:00', 1500);
INSERT INTO Dati_Acqua
VALUES('aaa0121', '2019-09-01 7:00:00',  1500);
INSERT INTO Dati_Acqua
VALUES('aaa0121', '2019-09-01 7:30:00',  1300);
INSERT INTO Dati_Acqua
VALUES('aaa0121', '2019-09-01 8:00:00',  1000);
INSERT INTO Dati_Acqua
VALUES('aaa0121', '2019-09-01 8:30:00',  400);
INSERT INTO Dati_Acqua
VALUES('aaa0121', '2019-09-01 9:00:00',  400);
INSERT INTO Dati_Acqua
VALUES('aaa0121', '2019-09-01 9:30:00',  350);
INSERT INTO Dati_Acqua
VALUES('aaa0121', '2019-09-01 10:00:00',  1500);
INSERT INTO Dati_Acqua
VALUES('aaa0121', '2019-09-01 10:30:00',  1100);
INSERT INTO Dati_Acqua
VALUES('aaa0121', '2019-09-01 11:00:00',  1000);
INSERT INTO Dati_Acqua
VALUES('aaa0121', '2019-09-01 11:30:00',  600);
INSERT INTO Dati_Acqua
VALUES('aaa0121', '2019-09-01 12:00:00',  600);
INSERT INTO Dati_Acqua
VALUES('aaa0121', '2019-09-01 12:30:00',  350);
INSERT INTO Dati_Acqua
VALUES('aaa0121', '2019-09-01 13:00:00',  1500);
INSERT INTO Dati_Acqua
VALUES('aaa0122', '2019-09-01 7:00:00', 1500);
INSERT INTO Dati_Acqua
VALUES('aaa0122', '2019-09-01 7:30:00',  1200);
INSERT INTO Dati_Acqua
VALUES('aaa0122', '2019-09-01 8:00:00',  1000);
INSERT INTO Dati_Acqua
VALUES('aaa0122', '2019-09-01 8:30:00',  700);
INSERT INTO Dati_Acqua
VALUES('aaa0122', '2019-09-01 9:00:00',  700);
INSERT INTO Dati_Acqua
VALUES('aaa0122', '2019-09-01 9:30:00',  650);
INSERT INTO Dati_Acqua
VALUES('aaa0122', '2019-09-01 10:00:00',  1500);
INSERT INTO Dati_Acqua
VALUES('aaa0122', '2019-09-01 10:30:00',  1100);
INSERT INTO Dati_Acqua
VALUES('aaa0122', '2019-09-01 11:00:00',  1000);
INSERT INTO Dati_Acqua
VALUES('aaa0122', '2019-09-01 11:30:00',  600);
INSERT INTO Dati_Acqua
VALUES('aaa0122', '2019-09-01 12:00:00', 600);
INSERT INTO Dati_Acqua
VALUES('aaa0122', '2019-09-01 12:30:00',  350);
INSERT INTO Dati_Acqua
VALUES('aaa0122', '2019-09-01 13:00:00',  1500);
INSERT INTO Dati_Acqua
VALUES('aaa0123', '2019-09-01 7:00:00',  1500);
INSERT INTO Dati_Acqua
VALUES('aaa0123', '2019-09-01 7:30:00',  1500);
INSERT INTO Dati_Acqua
VALUES('aaa0123', '2019-09-01 8:00:00',  1500);
INSERT INTO Dati_Acqua
VALUES('aaa0123', '2019-09-01 8:30:00', 1500);
INSERT INTO Dati_Acqua
VALUES('aaa0123', '2019-09-01 9:00:00',  1500);
INSERT INTO Dati_Acqua
VALUES('aaa0123', '2019-09-01 9:30:00',  1500);
INSERT INTO Dati_Acqua
VALUES('aaa0123', '2019-09-01 10:00:00',  1500);
INSERT INTO Dati_Acqua
VALUES('aaa0123', '2019-09-01 10:30:00',  1500);
INSERT INTO Dati_Acqua
VALUES('aaa0123', '2019-09-01 11:00:00', 1500);
INSERT INTO Dati_Acqua
VALUES('aaa0123', '2019-09-01 11:30:00',1500);
INSERT INTO Dati_Acqua
VALUES('aaa0123', '2019-09-01 12:00:00',  1500);
INSERT INTO Dati_Acqua
VALUES('aaa0123', '2019-09-01 12:30:00',  1500);
INSERT INTO Dati_Acqua
VALUES('aaa0123', '2019-09-01 13:00:00',  1500);
INSERT INTO Dati_Acqua
VALUES('aaa0240', '2019-09-01 7:00:00',  1500);
INSERT INTO Dati_Acqua
VALUES('aaa0240', '2019-09-01 7:30:00',  1200);
INSERT INTO Dati_Acqua
VALUES('aaa0240', '2019-09-01 8:00:00', 1000);
INSERT INTO Dati_Acqua
VALUES('aaa0240', '2019-09-01 8:30:00',  700);
INSERT INTO Dati_Acqua
VALUES('aaa0240', '2019-09-01 9:00:00',  700);
INSERT INTO Dati_Acqua
VALUES('aaa0240', '2019-09-01 9:30:00',  650);
INSERT INTO Dati_Acqua
VALUES('aaa0240', '2019-09-01 10:00:00',  1500);
INSERT INTO Dati_Acqua
VALUES('aaa0240', '2019-09-01 10:30:00',  1100);
INSERT INTO Dati_Acqua
VALUES('aaa0240', '2019-09-01 11:00:00',  1000);
INSERT INTO Dati_Acqua
VALUES('aaa0240', '2019-09-01 11:30:00', 600);
INSERT INTO Dati_Acqua
VALUES('aaa0240', '2019-09-01 12:00:00',  600);
INSERT INTO Dati_Acqua
VALUES('aaa0240', '2019-09-01 12:30:00', 350);
INSERT INTO Dati_Acqua
VALUES('aaa0240', '2019-09-01 13:00:00', 1500);
INSERT INTO Dati_Acqua
VALUES('aaa0241', '2019-09-01 7:00:00',  1500);
INSERT INTO Dati_Acqua
VALUES('aaa0241', '2019-09-01 7:30:00',  1300);
INSERT INTO Dati_Acqua
VALUES('aaa0241', '2019-09-01 8:00:00',  1000);
INSERT INTO Dati_Acqua
VALUES('aaa0241', '2019-09-01 8:30:00', 400);
INSERT INTO Dati_Acqua
VALUES('aaa0241', '2019-09-01 9:00:00',  400);
INSERT INTO Dati_Acqua
VALUES('aaa0241', '2019-09-01 9:30:00', 350);
INSERT INTO Dati_Acqua
VALUES('aaa0241', '2019-09-01 10:00:00',  1500);
INSERT INTO Dati_Acqua
VALUES('aaa0241', '2019-09-01 10:30:00',  1100);
INSERT INTO Dati_Acqua
VALUES('aaa0241', '2019-09-01 11:00:00',  1000);
INSERT INTO Dati_Acqua
VALUES('aaa0241', '2019-09-01 11:30:00',  600);
INSERT INTO Dati_Acqua
VALUES('aaa0241', '2019-09-01 12:00:00',  600);
INSERT INTO Dati_Acqua
VALUES('aaa0241', '2019-09-01 12:30:00', 350);
INSERT INTO Dati_Acqua
VALUES('aaa0241', '2019-09-01 13:00:00',  1500);
INSERT INTO Dati_Acqua
VALUES('aaa0242', '2019-09-01 7:00:00',  1500);
INSERT INTO Dati_Acqua
VALUES('aaa0242', '2019-09-01 7:30:00',  1200);
INSERT INTO Dati_Acqua
VALUES('aaa0242', '2019-09-01 8:00:00',  1000);
INSERT INTO Dati_Acqua
VALUES('aaa0242', '2019-09-01 8:30:00',  700);
INSERT INTO Dati_Acqua
VALUES('aaa0242', '2019-09-01 9:00:00',  700);
INSERT INTO Dati_Acqua
VALUES('aaa0242', '2019-09-01 9:30:00',  650);
INSERT INTO Dati_Acqua
VALUES('aaa0242', '2019-09-01 10:00:00',  1500);
INSERT INTO Dati_Acqua
VALUES('aaa0242', '2019-09-01 10:30:00',  1100);
INSERT INTO Dati_Acqua
VALUES('aaa0242', '2019-09-01 11:00:00',  1000);
INSERT INTO Dati_Acqua
VALUES('aaa0242', '2019-09-01 11:30:00', 600);
INSERT INTO Dati_Acqua
VALUES('aaa0242', '2019-09-01 12:00:00',  600);
INSERT INTO Dati_Acqua
VALUES('aaa0242', '2019-09-01 12:30:00', 350);
INSERT INTO Dati_Acqua
VALUES('aaa0242', '2019-09-01 13:00:00', 1500);
INSERT INTO Dati_Acqua
VALUES('aaa0243', '2019-09-01 7:00:00', 1500);
INSERT INTO Dati_Acqua
VALUES('aaa0243', '2019-09-01 7:30:00',  1500);
INSERT INTO Dati_Acqua
VALUES('aaa0243', '2019-09-01 8:00:00',  1500);
INSERT INTO Dati_Acqua
VALUES('aaa0243', '2019-09-01 8:30:00',  1500);
INSERT INTO Dati_Acqua
VALUES('aaa0243', '2019-09-01 9:00:00', 1500);
INSERT INTO Dati_Acqua
VALUES('aaa0243', '2019-09-01 9:30:00',  1500);
INSERT INTO Dati_Acqua
VALUES('aaa0243', '2019-09-01 10:00:00',  1500);
INSERT INTO Dati_Acqua
VALUES('aaa0243', '2019-09-01 10:30:00',  1500);
INSERT INTO Dati_Acqua
VALUES('aaa0243', '2019-09-01 11:00:00',  1500);
INSERT INTO Dati_Acqua
VALUES('aaa0243', '2019-09-01 11:30:00',  1500);
INSERT INTO Dati_Acqua
VALUES('aaa0243', '2019-09-01 12:00:00',  1500);
INSERT INTO Dati_Acqua
VALUES('aaa0243', '2019-09-01 12:30:00',  1500);
INSERT INTO Dati_Acqua
VALUES('aaa0243', '2019-09-01 13:00:00', 1500);

-- singolo condizionatore
INSERT INTO Singolo_Condizionatore
VALUES('aaa0000', 'aaa0000');
INSERT INTO Singolo_Condizionatore
VALUES('aaa0001', 'aaa0000');
INSERT INTO Singolo_Condizionatore
VALUES('aaa0002', 'aaa0000');
INSERT INTO Singolo_Condizionatore
VALUES('aaa0003', 'aaa0000');
INSERT INTO Singolo_Condizionatore
VALUES('aaa0004', 'aaa0001');
INSERT INTO Singolo_Condizionatore
VALUES('aaa0005', 'aaa0001');
INSERT INTO Singolo_Condizionatore
VALUES('aaa0006', 'aaa0001');
INSERT INTO Singolo_Condizionatore
VALUES('aaa0007', 'aaa0001');
INSERT INTO Singolo_Condizionatore
VALUES('aaa0008', 'aaa0002');
INSERT INTO Singolo_Condizionatore
VALUES('aaa0009', 'aaa0002');
INSERT INTO Singolo_Condizionatore
VALUES('aaa0010', 'aaa0002');
INSERT INTO Singolo_Condizionatore
VALUES('aaa0011', 'aaa0002');
INSERT INTO Singolo_Condizionatore
VALUES('aaa0012', 'aaa0003');
INSERT INTO Singolo_Condizionatore
VALUES('aaa0013', 'aaa0003');
INSERT INTO Singolo_Condizionatore
VALUES('aaa0014', 'aaa0003');
INSERT INTO Singolo_Condizionatore
VALUES('aaa0015', 'aaa0003');
INSERT INTO Singolo_Condizionatore
VALUES('aaa0016', 'aaa0004');
INSERT INTO Singolo_Condizionatore
VALUES('aaa0017', 'aaa0004');
INSERT INTO Singolo_Condizionatore
VALUES('aaa0018', 'aaa0004');
INSERT INTO Singolo_Condizionatore
VALUES('aaa0019', 'aaa0004');
INSERT INTO Singolo_Condizionatore
VALUES('aaa0020', 'aaa0005');
INSERT INTO Singolo_Condizionatore
VALUES('aaa0021', 'aaa0005');
INSERT INTO Singolo_Condizionatore
VALUES('aaa0022', 'aaa0005');
INSERT INTO Singolo_Condizionatore
VALUES('aaa0023', 'aaa0005');
INSERT INTO Singolo_Condizionatore
VALUES('aaa0024', 'aaa0006');
INSERT INTO Singolo_Condizionatore
VALUES('aaa0025', 'aaa0006');
INSERT INTO Singolo_Condizionatore
VALUES('aaa0026', 'aaa0006');
INSERT INTO Singolo_Condizionatore
VALUES('aaa0027', 'aaa0006');
INSERT INTO Singolo_Condizionatore
VALUES('aaa0028', 'aaa0007');
INSERT INTO Singolo_Condizionatore
VALUES('aaa0029', 'aaa0007');
INSERT INTO Singolo_Condizionatore
VALUES('aaa0030', 'aaa0007');
INSERT INTO Singolo_Condizionatore
VALUES('aaa0031', 'aaa0007');
INSERT INTO Singolo_Condizionatore
VALUES('aaa0032', 'aaa0008');
INSERT INTO Singolo_Condizionatore
VALUES('aaa0033', 'aaa0008');
INSERT INTO Singolo_Condizionatore
VALUES('aaa0034', 'aaa0008');
INSERT INTO Singolo_Condizionatore
VALUES('aaa0035', 'aaa0008');
INSERT INTO Singolo_Condizionatore
VALUES('aaa0036', 'aaa0009');
INSERT INTO Singolo_Condizionatore
VALUES('aaa0037', 'aaa0009');
INSERT INTO Singolo_Condizionatore
VALUES('aaa0038', 'aaa0009');
INSERT INTO Singolo_Condizionatore
VALUES('aaa0039', 'aaa0009');
INSERT INTO Singolo_Condizionatore
VALUES('aaa0040', 'aaa0010');
INSERT INTO Singolo_Condizionatore
VALUES('aaa0041', 'aaa0010');
INSERT INTO Singolo_Condizionatore
VALUES('aaa0042', 'aaa0010');
INSERT INTO Singolo_Condizionatore
VALUES('aaa0043', 'aaa0010');
INSERT INTO Singolo_Condizionatore
VALUES('aaa0044', 'aaa0011');
INSERT INTO Singolo_Condizionatore
VALUES('aaa0045', 'aaa0011');
INSERT INTO Singolo_Condizionatore
VALUES('aaa0046', 'aaa0011');
INSERT INTO Singolo_Condizionatore
VALUES('aaa0047', 'aaa0011');
INSERT INTO Singolo_Condizionatore
VALUES('aaa0048', 'aaa0012');
INSERT INTO Singolo_Condizionatore
VALUES('aaa0049', 'aaa0012');
INSERT INTO Singolo_Condizionatore
VALUES('aaa0050', 'aaa0012');
INSERT INTO Singolo_Condizionatore
VALUES('aaa0051', 'aaa0012');
INSERT INTO Singolo_Condizionatore
VALUES('aaa0052', 'aaa0013');
INSERT INTO Singolo_Condizionatore
VALUES('aaa0053', 'aaa0013');
INSERT INTO Singolo_Condizionatore
VALUES('aaa0054', 'aaa0013');
INSERT INTO Singolo_Condizionatore
VALUES('aaa0055', 'aaa0013');
INSERT INTO Singolo_Condizionatore
VALUES('aaa0056', 'aaa0014');
INSERT INTO Singolo_Condizionatore
VALUES('aaa0057', 'aaa0014');
INSERT INTO Singolo_Condizionatore
VALUES('aaa0058', 'aaa0014');
INSERT INTO Singolo_Condizionatore
VALUES('aaa0059', 'aaa0014');
INSERT INTO Singolo_Condizionatore
VALUES('aaa0060', 'aaa0015');
INSERT INTO Singolo_Condizionatore
VALUES('aaa0061', 'aaa0015');
INSERT INTO Singolo_Condizionatore
VALUES('aaa0062', 'aaa0015');
INSERT INTO Singolo_Condizionatore
VALUES('aaa0063', 'aaa0015');
INSERT INTO Singolo_Condizionatore
VALUES('aaa0064', 'aaa0016');
INSERT INTO Singolo_Condizionatore
VALUES('aaa0065', 'aaa0016');
INSERT INTO Singolo_Condizionatore
VALUES('aaa0066', 'aaa0016');
INSERT INTO Singolo_Condizionatore
VALUES('aaa0067', 'aaa0016');
INSERT INTO Singolo_Condizionatore
VALUES('aaa0068', 'aaa0017');
INSERT INTO Singolo_Condizionatore
VALUES('aaa0069', 'aaa0017');
INSERT INTO Singolo_Condizionatore
VALUES('aaa0070', 'aaa0017');
INSERT INTO Singolo_Condizionatore
VALUES('aaa0071', 'aaa0017');
INSERT INTO Singolo_Condizionatore
VALUES('aaa0072', 'aaa0018');
INSERT INTO Singolo_Condizionatore
VALUES('aaa0073', 'aaa0018');
INSERT INTO Singolo_Condizionatore
VALUES('aaa0074', 'aaa0018');
INSERT INTO Singolo_Condizionatore
VALUES('aaa0075', 'aaa0018');
INSERT INTO Singolo_Condizionatore
VALUES('aaa0076', 'aaa0019');
INSERT INTO Singolo_Condizionatore
VALUES('aaa0077', 'aaa0019');
INSERT INTO Singolo_Condizionatore
VALUES('aaa0078', 'aaa0019');
INSERT INTO Singolo_Condizionatore
VALUES('aaa0079', 'aaa0019');
INSERT INTO Singolo_Condizionatore
VALUES('aaa0080', 'aaa0020');
INSERT INTO Singolo_Condizionatore
VALUES('aaa0081', 'aaa0020');
INSERT INTO Singolo_Condizionatore
VALUES('aaa0082', 'aaa0020');
INSERT INTO Singolo_Condizionatore
VALUES('aaa0083', 'aaa0020');
INSERT INTO Singolo_Condizionatore
VALUES('aaa0084', 'aaa0021');
INSERT INTO Singolo_Condizionatore
VALUES('aaa0085', 'aaa0021');
INSERT INTO Singolo_Condizionatore
VALUES('aaa0086', 'aaa0021');
INSERT INTO Singolo_Condizionatore
VALUES('aaa0087', 'aaa0021');
INSERT INTO Singolo_Condizionatore
VALUES('aaa0088', 'aaa0022');
INSERT INTO Singolo_Condizionatore
VALUES('aaa0089', 'aaa0022');
INSERT INTO Singolo_Condizionatore
VALUES('aaa0090', 'aaa0022');
INSERT INTO Singolo_Condizionatore
VALUES('aaa0091', 'aaa0022');
INSERT INTO Singolo_Condizionatore
VALUES('aaa0092', 'aaa0023');
INSERT INTO Singolo_Condizionatore
VALUES('aaa0093', 'aaa0023');
INSERT INTO Singolo_Condizionatore
VALUES('aaa0094', 'aaa0023');
INSERT INTO Singolo_Condizionatore
VALUES('aaa0095', 'aaa0023');

-- singolo dispositivo illuminazione
INSERT INTO Singolo_Dispositivo_Illuminazione
VALUES ('aaa0000', 'aaa0000');
INSERT INTO Singolo_Dispositivo_Illuminazione
VALUES ('aaa0001', 'aaa0000');
INSERT INTO Singolo_Dispositivo_Illuminazione
VALUES ('aaa0002', 'aaa0000');
INSERT INTO Singolo_Dispositivo_Illuminazione
VALUES ('aaa0003', 'aaa0000');
INSERT INTO Singolo_Dispositivo_Illuminazione
VALUES ('aaa0004', 'aaa0000');
INSERT INTO Singolo_Dispositivo_Illuminazione
VALUES ('aaa0005', 'aaa0000');
INSERT INTO Singolo_Dispositivo_Illuminazione
VALUES ('aaa0006', 'aaa0000');
INSERT INTO Singolo_Dispositivo_Illuminazione
VALUES ('aaa0007', 'aaa0000');
INSERT INTO Singolo_Dispositivo_Illuminazione
VALUES ('aaa0008', 'aaa0000');
INSERT INTO Singolo_Dispositivo_Illuminazione
VALUES ('aaa0009', 'aaa0000');
INSERT INTO Singolo_Dispositivo_Illuminazione
VALUES ('aaa0010', 'aaa0000');
INSERT INTO Singolo_Dispositivo_Illuminazione
VALUES ('aaa0011', 'aaa0000');
INSERT INTO Singolo_Dispositivo_Illuminazione
VALUES ('aaa0012', 'aaa0000');
INSERT INTO Singolo_Dispositivo_Illuminazione
VALUES ('aaa0013', 'aaa0000');
INSERT INTO Singolo_Dispositivo_Illuminazione
VALUES ('aaa0014', 'aaa0000');
INSERT INTO Singolo_Dispositivo_Illuminazione
VALUES ('aaa0015', 'aaa0000');
INSERT INTO Singolo_Dispositivo_Illuminazione
VALUES ('aaa0016', 'aaa0000');
INSERT INTO Singolo_Dispositivo_Illuminazione
VALUES ('aaa0017', 'aaa0000');
INSERT INTO Singolo_Dispositivo_Illuminazione
VALUES ('aaa0018', 'aaa0000');
INSERT INTO Singolo_Dispositivo_Illuminazione
VALUES ('aaa0019', 'aaa0000');
INSERT INTO Singolo_Dispositivo_Illuminazione
VALUES ('aaa0020', 'aaa0000');
INSERT INTO Singolo_Dispositivo_Illuminazione
VALUES ('aaa0021', 'aaa0001');
INSERT INTO Singolo_Dispositivo_Illuminazione
VALUES ('aaa0022', 'aaa0001');
INSERT INTO Singolo_Dispositivo_Illuminazione
VALUES ('aaa0023', 'aaa0001');
INSERT INTO Singolo_Dispositivo_Illuminazione
VALUES ('aaa0024', 'aaa0001');
INSERT INTO Singolo_Dispositivo_Illuminazione
VALUES ('aaa0025', 'aaa0001');
INSERT INTO Singolo_Dispositivo_Illuminazione
VALUES ('aaa0026', 'aaa0001');
INSERT INTO Singolo_Dispositivo_Illuminazione
VALUES ('aaa0027', 'aaa0001');
INSERT INTO Singolo_Dispositivo_Illuminazione
VALUES ('aaa0028', 'aaa0001');
INSERT INTO Singolo_Dispositivo_Illuminazione
VALUES ('aaa0029', 'aaa0001');
INSERT INTO Singolo_Dispositivo_Illuminazione
VALUES ('aaa0030', 'aaa0001');
INSERT INTO Singolo_Dispositivo_Illuminazione
VALUES ('aaa0031', 'aaa0001');
INSERT INTO Singolo_Dispositivo_Illuminazione
VALUES ('aaa0032', 'aaa0001');
INSERT INTO Singolo_Dispositivo_Illuminazione
VALUES ('aaa0033', 'aaa0001');
INSERT INTO Singolo_Dispositivo_Illuminazione
VALUES ('aaa0034', 'aaa0001');
INSERT INTO Singolo_Dispositivo_Illuminazione
VALUES ('aaa0035', 'aaa0001');
INSERT INTO Singolo_Dispositivo_Illuminazione
VALUES ('aaa0036', 'aaa0001');
INSERT INTO Singolo_Dispositivo_Illuminazione
VALUES ('aaa0037', 'aaa0001');
INSERT INTO Singolo_Dispositivo_Illuminazione
VALUES ('aaa0038', 'aaa0001');
INSERT INTO Singolo_Dispositivo_Illuminazione
VALUES ('aaa0039', 'aaa0001');
INSERT INTO Singolo_Dispositivo_Illuminazione
VALUES ('aaa0040', 'aaa0001');
INSERT INTO Singolo_Dispositivo_Illuminazione
VALUES ('aaa0041', 'aaa0001');
INSERT INTO Singolo_Dispositivo_Illuminazione
VALUES ('aaa0042', 'aaa0002');
INSERT INTO Singolo_Dispositivo_Illuminazione
VALUES ('aaa0043', 'aaa0002');
INSERT INTO Singolo_Dispositivo_Illuminazione
VALUES ('aaa0044', 'aaa0002');
INSERT INTO Singolo_Dispositivo_Illuminazione
VALUES ('aaa0045', 'aaa0002');
INSERT INTO Singolo_Dispositivo_Illuminazione
VALUES ('aaa0046', 'aaa0002');
INSERT INTO Singolo_Dispositivo_Illuminazione
VALUES ('aaa0047', 'aaa0002');
INSERT INTO Singolo_Dispositivo_Illuminazione
VALUES ('aaa0048', 'aaa0002');
INSERT INTO Singolo_Dispositivo_Illuminazione
VALUES ('aaa0049', 'aaa0002');
INSERT INTO Singolo_Dispositivo_Illuminazione
VALUES ('aaa0050', 'aaa0002');
INSERT INTO Singolo_Dispositivo_Illuminazione
VALUES ('aaa0051', 'aaa0002');
INSERT INTO Singolo_Dispositivo_Illuminazione
VALUES ('aaa0052', 'aaa0002');
INSERT INTO Singolo_Dispositivo_Illuminazione
VALUES ('aaa0053', 'aaa0002');
INSERT INTO Singolo_Dispositivo_Illuminazione
VALUES ('aaa0054', 'aaa0002');
INSERT INTO Singolo_Dispositivo_Illuminazione
VALUES ('aaa0055', 'aaa0002');
INSERT INTO Singolo_Dispositivo_Illuminazione
VALUES ('aaa0056', 'aaa0002');
INSERT INTO Singolo_Dispositivo_Illuminazione
VALUES ('aaa0057', 'aaa0002');
INSERT INTO Singolo_Dispositivo_Illuminazione
VALUES ('aaa0058', 'aaa0002');
INSERT INTO Singolo_Dispositivo_Illuminazione
VALUES ('aaa0059', 'aaa0002');
INSERT INTO Singolo_Dispositivo_Illuminazione
VALUES ('aaa0060', 'aaa0002');
INSERT INTO Singolo_Dispositivo_Illuminazione
VALUES ('aaa0061', 'aaa0002');
INSERT INTO Singolo_Dispositivo_Illuminazione
VALUES ('aaa0062', 'aaa0002');
INSERT INTO Singolo_Dispositivo_Illuminazione
VALUES ('aaa0063', 'aaa0003');
INSERT INTO Singolo_Dispositivo_Illuminazione
VALUES ('aaa0064', 'aaa0003');
INSERT INTO Singolo_Dispositivo_Illuminazione
VALUES ('aaa0065', 'aaa0003');
INSERT INTO Singolo_Dispositivo_Illuminazione
VALUES ('aaa0066', 'aaa0003');
INSERT INTO Singolo_Dispositivo_Illuminazione
VALUES ('aaa0067', 'aaa0003');
INSERT INTO Singolo_Dispositivo_Illuminazione
VALUES ('aaa0068', 'aaa0003');
INSERT INTO Singolo_Dispositivo_Illuminazione
VALUES ('aaa0069', 'aaa0003');
INSERT INTO Singolo_Dispositivo_Illuminazione
VALUES ('aaa0070', 'aaa0003');
INSERT INTO Singolo_Dispositivo_Illuminazione
VALUES ('aaa0071', 'aaa0003');
INSERT INTO Singolo_Dispositivo_Illuminazione
VALUES ('aaa0072', 'aaa0003');
INSERT INTO Singolo_Dispositivo_Illuminazione
VALUES ('aaa0073', 'aaa0003');
INSERT INTO Singolo_Dispositivo_Illuminazione
VALUES ('aaa0074', 'aaa0003');
INSERT INTO Singolo_Dispositivo_Illuminazione
VALUES ('aaa0075', 'aaa0003');
INSERT INTO Singolo_Dispositivo_Illuminazione
VALUES ('aaa0076', 'aaa0003');
INSERT INTO Singolo_Dispositivo_Illuminazione
VALUES ('aaa0077', 'aaa0003');
INSERT INTO Singolo_Dispositivo_Illuminazione
VALUES ('aaa0078', 'aaa0003');
INSERT INTO Singolo_Dispositivo_Illuminazione
VALUES ('aaa0079', 'aaa0003');
INSERT INTO Singolo_Dispositivo_Illuminazione
VALUES ('aaa0081', 'aaa0003');
INSERT INTO Singolo_Dispositivo_Illuminazione
VALUES ('aaa0082', 'aaa0003');
INSERT INTO Singolo_Dispositivo_Illuminazione
VALUES ('aaa0083', 'aaa0003');

-- SENSORI AMBIENTE
INSERT INTO Sensori_Ambiente
VALUES('aaa0000', 'aaa0000');
INSERT INTO Sensori_Ambiente
VALUES('aaa0001', 'aaa0000');
INSERT INTO Sensori_Ambiente
VALUES('aaa0002', 'aaa0000');
INSERT INTO Sensori_Ambiente
VALUES('aaa0003', 'aaa0000');
INSERT INTO Sensori_Ambiente
VALUES('aaa0004', 'aaa0000');
INSERT INTO Sensori_Ambiente
VALUES('aaa0005', 'aaa0000');
INSERT INTO Sensori_Ambiente
VALUES('aaa0006', 'aaa0000');
INSERT INTO Sensori_Ambiente
VALUES('aaa0007', 'aaa0000');
INSERT INTO Sensori_Ambiente
VALUES('aaa0008', 'aaa0000');
INSERT INTO Sensori_Ambiente
VALUES('aaa0009', 'aaa0000');
INSERT INTO Sensori_Ambiente
VALUES('aaa0010', 'aaa0001');
INSERT INTO Sensori_Ambiente
VALUES('aaa0011', 'aaa0001');
INSERT INTO Sensori_Ambiente
VALUES('aaa0012', 'aaa0001');
INSERT INTO Sensori_Ambiente
VALUES('aaa0013', 'aaa0001');
INSERT INTO Sensori_Ambiente
VALUES('aaa0014', 'aaa0001');
INSERT INTO Sensori_Ambiente
VALUES('aaa0015', 'aaa0001');
INSERT INTO Sensori_Ambiente
VALUES('aaa0016', 'aaa0001');
INSERT INTO Sensori_Ambiente
VALUES('aaa0017', 'aaa0001');
INSERT INTO Sensori_Ambiente
VALUES('aaa0018', 'aaa0001');
INSERT INTO Sensori_Ambiente
VALUES('aaa0019', 'aaa0001');
INSERT INTO Sensori_Ambiente
VALUES('aaa0020', 'aaa0002');
INSERT INTO Sensori_Ambiente
VALUES('aaa0021', 'aaa0002');
INSERT INTO Sensori_Ambiente
VALUES('aaa0022', 'aaa0002');
INSERT INTO Sensori_Ambiente
VALUES('aaa0023', 'aaa0002');
INSERT INTO Sensori_Ambiente
VALUES('aaa0024', 'aaa0002');
INSERT INTO Sensori_Ambiente
VALUES('aaa0025', 'aaa0002');
INSERT INTO Sensori_Ambiente
VALUES('aaa0026', 'aaa0002');
INSERT INTO Sensori_Ambiente
VALUES('aaa0027', 'aaa0002');
INSERT INTO Sensori_Ambiente
VALUES('aaa0028', 'aaa0002');
INSERT INTO Sensori_Ambiente
VALUES('aaa0029', 'aaa0002');
INSERT INTO Sensori_Ambiente
VALUES('aaa0030', 'aaa0003');
INSERT INTO Sensori_Ambiente
VALUES('aaa0031', 'aaa0003');
INSERT INTO Sensori_Ambiente
VALUES('aaa0032', 'aaa0003');
INSERT INTO Sensori_Ambiente
VALUES('aaa0033', 'aaa0003');
INSERT INTO Sensori_Ambiente
VALUES('aaa0034', 'aaa0003');
INSERT INTO Sensori_Ambiente
VALUES('aaa0035', 'aaa0003');
INSERT INTO Sensori_Ambiente
VALUES('aaa0036', 'aaa0003');
INSERT INTO Sensori_Ambiente
VALUES('aaa0037', 'aaa0003');
INSERT INTO Sensori_Ambiente
VALUES('aaa0038', 'aaa0003');
INSERT INTO Sensori_Ambiente
VALUES('aaa0039', 'aaa0003');
INSERT INTO Sensori_Ambiente
VALUES('aaa0040', 'aaa0004');
INSERT INTO Sensori_Ambiente
VALUES('aaa0041', 'aaa0004');
INSERT INTO Sensori_Ambiente
VALUES('aaa0042', 'aaa0004');
INSERT INTO Sensori_Ambiente
VALUES('aaa0043', 'aaa0004');
INSERT INTO Sensori_Ambiente
VALUES('aaa0044', 'aaa0004');
INSERT INTO Sensori_Ambiente
VALUES('aaa0045', 'aaa0004');
INSERT INTO Sensori_Ambiente
VALUES('aaa0046', 'aaa0004');
INSERT INTO Sensori_Ambiente
VALUES('aaa0047', 'aaa0004');
INSERT INTO Sensori_Ambiente
VALUES('aaa0048', 'aaa0004');
INSERT INTO Sensori_Ambiente
VALUES('aaa0049', 'aaa0004');
INSERT INTO Sensori_Ambiente
VALUES('aaa0050', 'aaa0005');
INSERT INTO Sensori_Ambiente
VALUES('aaa0051', 'aaa0005');
INSERT INTO Sensori_Ambiente
VALUES('aaa0052', 'aaa0005');
INSERT INTO Sensori_Ambiente
VALUES('aaa0053', 'aaa0005');
INSERT INTO Sensori_Ambiente
VALUES('aaa0054', 'aaa0005');
INSERT INTO Sensori_Ambiente
VALUES('aaa0055', 'aaa0005');
INSERT INTO Sensori_Ambiente
VALUES('aaa0056', 'aaa0005');
INSERT INTO Sensori_Ambiente
VALUES('aaa0057', 'aaa0005');
INSERT INTO Sensori_Ambiente
VALUES('aaa0058', 'aaa0005');
INSERT INTO Sensori_Ambiente
VALUES('aaa0059', 'aaa0005');
INSERT INTO Sensori_Ambiente
VALUES('aaa0060', 'aaa0006');
INSERT INTO Sensori_Ambiente
VALUES('aaa0061', 'aaa0006');
INSERT INTO Sensori_Ambiente
VALUES('aaa0062', 'aaa0006');
INSERT INTO Sensori_Ambiente
VALUES('aaa0063', 'aaa0006');
INSERT INTO Sensori_Ambiente
VALUES('aaa0064', 'aaa0006');
INSERT INTO Sensori_Ambiente
VALUES('aaa0065', 'aaa0006');
INSERT INTO Sensori_Ambiente
VALUES('aaa0066', 'aaa0006');
INSERT INTO Sensori_Ambiente
VALUES('aaa0067', 'aaa0006');
INSERT INTO Sensori_Ambiente
VALUES('aaa0068', 'aaa0006');
INSERT INTO Sensori_Ambiente
VALUES('aaa0069', 'aaa0006');
INSERT INTO Sensori_Ambiente
VALUES('aaa0070', 'aaa0007');
INSERT INTO Sensori_Ambiente
VALUES('aaa0071', 'aaa0007');
INSERT INTO Sensori_Ambiente
VALUES('aaa0072', 'aaa0007');
INSERT INTO Sensori_Ambiente
VALUES('aaa0073', 'aaa0007');
INSERT INTO Sensori_Ambiente
VALUES('aaa0074', 'aaa0007');
INSERT INTO Sensori_Ambiente
VALUES('aaa0075', 'aaa0007');
INSERT INTO Sensori_Ambiente
VALUES('aaa0076', 'aaa0007');
INSERT INTO Sensori_Ambiente
VALUES('aaa0077', 'aaa0007');
INSERT INTO Sensori_Ambiente
VALUES('aaa0078', 'aaa0007');
INSERT INTO Sensori_Ambiente
VALUES('aaa0079', 'aaa0007');
INSERT INTO Sensori_Ambiente
VALUES('aaa0080', 'aaa0008');
INSERT INTO Sensori_Ambiente
VALUES('aaa0081', 'aaa0008');
INSERT INTO Sensori_Ambiente
VALUES('aaa0082', 'aaa0008');
INSERT INTO Sensori_Ambiente
VALUES('aaa0083', 'aaa0008');
INSERT INTO Sensori_Ambiente
VALUES('aaa0084', 'aaa0008');
INSERT INTO Sensori_Ambiente
VALUES('aaa0085', 'aaa0008');
INSERT INTO Sensori_Ambiente
VALUES('aaa0086', 'aaa0008');
INSERT INTO Sensori_Ambiente
VALUES('aaa0087', 'aaa0008');
INSERT INTO Sensori_Ambiente
VALUES('aaa0088', 'aaa0008');
INSERT INTO Sensori_Ambiente
VALUES('aaa0089', 'aaa0008');
INSERT INTO Sensori_Ambiente
VALUES('aaa0090', 'aaa0009');
INSERT INTO Sensori_Ambiente
VALUES('aaa0091', 'aaa0009');
INSERT INTO Sensori_Ambiente
VALUES('aaa0092', 'aaa0009');
INSERT INTO Sensori_Ambiente
VALUES('aaa0093', 'aaa0009');
INSERT INTO Sensori_Ambiente
VALUES('aaa0094', 'aaa0009');
INSERT INTO Sensori_Ambiente
VALUES('aaa0095', 'aaa0009');
INSERT INTO Sensori_Ambiente
VALUES('aaa0096', 'aaa0009');
INSERT INTO Sensori_Ambiente
VALUES('aaa0097', 'aaa0009');
INSERT INTO Sensori_Ambiente
VALUES('aaa0098', 'aaa0009');
INSERT INTO Sensori_Ambiente
VALUES('aaa0099', 'aaa0009');

-- rilevazioni
INSERT INTO Rilevazione 
VALUES('aaa0000','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione 
VALUES('aaa0000','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione 
VALUES('aaa0001','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione 
VALUES('aaa0001','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione 
VALUES('aaa0002','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione 
VALUES('aaa0002','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione  
VALUES('aaa0003','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione 
VALUES('aaa0003','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione 
VALUES('aaa0004','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione 
VALUES('aaa0004','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione  
VALUES('aaa0005','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione 
VALUES('aaa0005','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione 
VALUES('aaa0006','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione 
VALUES('aaa0006','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione 
VALUES('aaa0007','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione 
VALUES('aaa0007','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione 
VALUES('aaa0008','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione 
VALUES('aaa0008','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione 
VALUES('aaa0009','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione 
VALUES('aaa0009','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione
VALUES('aaa0010','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione 
VALUES('aaa0010','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione 
VALUES('aaa0011','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione 
VALUES('aaa0011','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione 
VALUES('aaa0012','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione 
VALUES('aaa0012','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione 
VALUES('aaa0013','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione 
VALUES('aaa0013','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione 
VALUES('aaa0014','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione 
VALUES('aaa0014','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione 
VALUES('aaa0015','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione 
VALUES('aaa0015','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione 
VALUES('aaa0016','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione 
VALUES('aaa0016','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione 
VALUES('aaa0017','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione 
VALUES('aaa0017','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione 
VALUES('aaa0018','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione 
VALUES('aaa0018','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione 
VALUES('aaa0019','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione 
VALUES('aaa0019','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione 
VALUES('aaa0020','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione 
VALUES('aaa0020','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione 
VALUES('aaa0021','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione 
VALUES('aaa0021','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione 
VALUES('aaa0022','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione 
VALUES('aaa0022','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione 
VALUES('aaa0023','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione 
VALUES('aaa0023','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione 
VALUES('aaa0024','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione 
VALUES('aaa0024','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione 
VALUES('aaa0025','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione 
VALUES('aaa0025','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione 
VALUES('aaa0026','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione 
VALUES('aaa0026','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione 
VALUES('aaa0027','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione 
VALUES('aaa0027','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione 
VALUES('aaa0028','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione 
VALUES('aaa0028','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione 
VALUES('aaa0029','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione 
VALUES('aaa0029','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione 
VALUES('aaa0030','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione 
VALUES('aaa0030','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione 
VALUES('aaa0031','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione 
VALUES('aaa0031','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione 
VALUES('aaa0032','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione 
VALUES('aaa0032','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione 
VALUES('aaa0033','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione 
VALUES('aaa0033','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione 
VALUES('aaa0034','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione 
VALUES('aaa0034','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione 
VALUES('aaa0035','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione 
VALUES('aaa0035','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione 
VALUES('aaa0036','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione 
VALUES('aaa0036','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione 
VALUES('aaa0037','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione 
VALUES('aaa0037','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione 
VALUES('aaa0038','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione 
VALUES('aaa0038','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione 
VALUES('aaa0039','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione 
VALUES('aaa0039','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione 
VALUES('aaa0040','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione
VALUES('aaa0040','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione 
VALUES('aaa0041','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione 
VALUES('aaa0041','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione 
VALUES('aaa0042','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione 
VALUES('aaa0042','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione 
VALUES('aaa0043','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione 
VALUES('aaa0043','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione 
VALUES('aaa0044','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione 
VALUES('aaa0044','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione 
VALUES('aaa0045','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione 
VALUES('aaa0045','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione 
VALUES('aaa0046','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione 
VALUES('aaa0046','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione 
VALUES('aaa0047','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione 
VALUES('aaa0047','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione 
VALUES('aaa0048','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione 
VALUES('aaa0048','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione 
VALUES('aaa0049','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione 
VALUES('aaa0049','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione 
VALUES('aaa0050','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione 
VALUES('aaa0050','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione 
VALUES('aaa0051','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione 
VALUES('aaa0051','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione 
VALUES('aaa0052','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione 
VALUES('aaa0052','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione 
VALUES('aaa0053','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione 
VALUES('aaa0053','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione 
VALUES('aaa0054','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione 
VALUES('aaa0054','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione 
VALUES('aaa0055','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione 
VALUES('aaa0055','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione  
VALUES('aaa0056','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione 
VALUES('aaa0056','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione 
VALUES('aaa0057','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione 
VALUES('aaa0057','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione  
VALUES('aaa0058','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione  
VALUES('aaa0058','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione  
VALUES('aaa0059','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione 
VALUES('aaa0059','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione  
VALUES('aaa0060','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione  
VALUES('aaa0060','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione 
VALUES('aaa0061','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione 
VALUES('aaa0061','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione 
VALUES('aaa0062','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione 
VALUES('aaa0062','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione  
VALUES('aaa0063','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione 
VALUES('aaa0063','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione 
VALUES('aaa0064','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione 
VALUES('aaa0064','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione  
VALUES('aaa0065','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione 
VALUES('aaa0065','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione 
VALUES('aaa0066','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione  
VALUES('aaa0066','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione  
VALUES('aaa0067','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione 
VALUES('aaa0067','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione 
VALUES('aaa0068','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione 
VALUES('aaa0068','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione  
VALUES('aaa0069','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione  
VALUES('aaa0069','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione 
VALUES('aaa0070','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione 
VALUES('aaa0070','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione  
VALUES('aaa0071','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione 
VALUES('aaa0071','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione 
VALUES('aaa0072','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione 
VALUES('aaa0072','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione 
VALUES('aaa0073','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione 
VALUES('aaa0073','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione  
VALUES('aaa0074','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione 
VALUES('aaa0074','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione 
VALUES('aaa0075','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione  
VALUES('aaa0075','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione  
VALUES('aaa0076','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione  
VALUES('aaa0076','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione 
VALUES('aaa0077','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO  Rilevazione 
VALUES('aaa0077','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione  
VALUES('aaa0078','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione 
VALUES('aaa0078','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione 
VALUES('aaa0079','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione 
VALUES('aaa0079','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione 
VALUES('aaa0080','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione 
VALUES('aaa0080','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione 
VALUES('aaa0081','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione  
VALUES('aaa0081','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione 
VALUES('aaa0082','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione  
VALUES('aaa0082','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione  
VALUES('aaa0083','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione 
VALUES('aaa0083','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione 
VALUES('aaa0084','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione 
VALUES('aaa0084','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione  
VALUES('aaa0085','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione 
VALUES('aaa0085','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione 
VALUES('aaa0086','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione 
VALUES('aaa0086','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione 
VALUES('aaa0087','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione 
VALUES('aaa0087','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione 
VALUES('aaa0088','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione  
VALUES('aaa0088','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione 
VALUES('aaa0089','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione 
VALUES('aaa0089','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione  
VALUES('aaa0090','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione 
VALUES('aaa0090','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione 
VALUES('aaa0091','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione 
VALUES('aaa0091','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione 
VALUES('aaa0092','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione 
VALUES('aaa0092','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione 
VALUES('aaa0093','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione 
VALUES('aaa0093','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione 
VALUES('aaa0094','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione  
VALUES('aaa0094','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione 
VALUES('aaa0095','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione 
VALUES('aaa0095','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione  
VALUES('aaa0096','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione  
VALUES('aaa0096','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione  
VALUES('aaa0097','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione 
VALUES('aaa0097','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione 
VALUES('aaa0098','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione 
VALUES('aaa0098','2019-09-02 10:00:00', 21, 0.22);
INSERT INTO Rilevazione  
VALUES('aaa0099','2019-09-02 08:00:00', 20, 0.25);
INSERT INTO Rilevazione 
VALUES('aaa0099','2019-09-02 10:00:00', 21, 0.22);

-- rilevazione sporcizia
INSERT INTO Rilevazione_Sporcizia
VALUES('aaa0000', '2019-09-02 12:00:00', 7, 5 );
INSERT INTO Rilevazione_Sporcizia
VALUES('aaa0000', '2019-09-07 17:00:00', 6, 5 );
INSERT INTO Rilevazione_Sporcizia
VALUES('aaa0001', '2019-09-01 12:00:00', 2, 9 );
INSERT INTO Rilevazione_Sporcizia
VALUES('aaa0001', '2019-09-02 12:00:00', 7, 10 );
INSERT INTO Rilevazione_Sporcizia
VALUES('aaa0002', '2019-09-09 09:00:00', 7, 5 );
INSERT INTO Rilevazione_Sporcizia
VALUES('aaa0002', '2019-09-02 10:00:00', 10, 5 );
INSERT INTO Rilevazione_Sporcizia
VALUES('aaa0003', '2019-09-02 12:00:00', 7, 5 );
INSERT INTO Rilevazione_Sporcizia
VALUES('aaa0003', '2019-09-02 19:00:00', 9, 2 );
INSERT INTO Rilevazione_Sporcizia
VALUES('aaa0004', '2019-09-02 12:00:00', 7, 5 );
INSERT INTO Rilevazione_Sporcizia
VALUES('aaa0004', '2019-09-07 17:00:00', 6, 5 );
INSERT INTO Rilevazione_Sporcizia
VALUES('aaa0005', '2019-09-01 12:00:00', 2, 9 );
INSERT INTO Rilevazione_Sporcizia
VALUES('aaa0005', '2019-09-02 12:00:00', 7, 10 );
INSERT INTO Rilevazione_Sporcizia
VALUES('aaa0006', '2019-09-09 09:00:00', 7, 5 );
INSERT INTO Rilevazione_Sporcizia
VALUES('aaa0006', '2019-09-02 10:00:00', 10, 5 );
INSERT INTO Rilevazione_Sporcizia
VALUES('aaa0007', '2019-09-02 12:00:00', 7, 5 );
INSERT INTO Rilevazione_Sporcizia
VALUES('aaa0007', '2019-09-02 19:00:00', 9, 2 );
INSERT INTO Rilevazione_Sporcizia
VALUES('aaa0008', '2019-09-01 12:00:00', 2, 9 );
INSERT INTO Rilevazione_Sporcizia
VALUES('aaa0008', '2019-09-02 12:00:00', 7, 10 );
INSERT INTO Rilevazione_Sporcizia
VALUES('aaa0009', '2019-09-09 09:00:00', 7, 5 );
INSERT INTO Rilevazione_Sporcizia
VALUES('aaa0009', '2019-09-02 10:00:00', 10, 5 );
INSERT INTO Rilevazione_Sporcizia
VALUES('aaa0010', '2019-09-02 12:00:00', 7, 5 );
INSERT INTO Rilevazione_Sporcizia
VALUES('aaa0010', '2019-09-02 19:00:00', 9, 2 );
INSERT INTO Rilevazione_Sporcizia
VALUES('aaa0011', '2019-09-02 12:00:00', 7, 5 );
INSERT INTO Rilevazione_Sporcizia
VALUES('aaa0011', '2019-09-07 17:00:00', 6, 5 );
INSERT INTO Rilevazione_Sporcizia
VALUES('aaa0012', '2019-09-01 12:00:00', 2, 9 );
INSERT INTO Rilevazione_Sporcizia
VALUES('aaa0012', '2019-09-02 12:00:00', 7, 10 );
INSERT INTO Rilevazione_Sporcizia
VALUES('aaa0013', '2019-09-09 09:00:00', 7, 5 );
INSERT INTO Rilevazione_Sporcizia
VALUES('aaa0013', '2019-09-02 10:00:00', 10, 5 );
INSERT INTO Rilevazione_Sporcizia
VALUES('aaa0014', '2019-09-02 12:00:00', 7, 5 );
INSERT INTO Rilevazione_Sporcizia
VALUES('aaa0014', '2019-09-02 19:00:00', 9, 2 );
INSERT INTO Rilevazione_Sporcizia
VALUES('aaa0015', '2019-09-02 12:00:00', 7, 5 );
INSERT INTO Rilevazione_Sporcizia
VALUES('aaa0015', '2019-09-07 17:00:00', 6, 5 );
INSERT INTO Rilevazione_Sporcizia
VALUES('aaa0016', '2019-09-01 12:00:00', 2, 9 );
INSERT INTO Rilevazione_Sporcizia
VALUES('aaa0016', '2019-09-02 12:00:00', 7, 10 );
INSERT INTO Rilevazione_Sporcizia
VALUES('aaa0017', '2019-09-09 09:00:00', 7, 5 );
INSERT INTO Rilevazione_Sporcizia
VALUES('aaa0017', '2019-09-02 10:00:00', 10, 5 );
INSERT INTO Rilevazione_Sporcizia
VALUES('aaa0018', '2019-09-02 12:00:00', 7, 5 );
INSERT INTO Rilevazione_Sporcizia
VALUES('aaa0018', '2019-09-02 19:00:00', 9, 2 );
INSERT INTO Rilevazione_Sporcizia
VALUES('aaa0019', '2019-09-01 12:00:00', 2, 9 );
INSERT INTO Rilevazione_Sporcizia
VALUES('aaa0019', '2019-09-02 12:00:00', 7, 10 );
INSERT INTO Rilevazione_Sporcizia
VALUES('aaa0020', '2019-09-09 09:00:00', 7, 5 );
INSERT INTO Rilevazione_Sporcizia
VALUES('aaa0020', '2019-09-02 10:00:00', 10, 5 );
INSERT INTO Rilevazione_Sporcizia
VALUES('aaa0021', '2019-09-02 12:00:00', 7, 5 );
INSERT INTO Rilevazione_Sporcizia
VALUES('aaa0021', '2019-09-02 19:00:00', 9, 2 );
INSERT INTO Rilevazione_Sporcizia
VALUES('aaa0022', '2019-09-09 09:00:00', 7, 5 );
INSERT INTO Rilevazione_Sporcizia
VALUES('aaa0022', '2019-09-02 10:00:00', 10, 5 );
INSERT INTO Rilevazione_Sporcizia
VALUES('aaa0023', '2019-09-02 12:00:00', 7, 5 );
INSERT INTO Rilevazione_Sporcizia
VALUES('aaa0023', '2019-09-02 19:00:00', 9, 2 );


-- macchinari pulizia
INSERT INTO Macchinario_Pulizia
VALUES ('Idropulitrice');
INSERT INTO Macchinario_Pulizia
VALUES ('Aspiratore');
INSERT INTO Macchinario_Pulizia
VALUES ('Igienizzatore');

-- operatore
INSERT INTO Operatore
VALUES('aaa0000');
INSERT INTO Operatore
VALUES('aaa0001');
INSERT INTO Operatore
VALUES('aaa0002');
INSERT INTO Operatore
VALUES('aaa0003');
INSERT INTO Operatore
VALUES('aaa0004');
INSERT INTO Operatore
VALUES('aaa0005');
INSERT INTO Operatore
VALUES('aaa0006');
INSERT INTO Operatore
VALUES('aaa0007');
INSERT INTO Operatore
VALUES('aaa0008');
INSERT INTO Operatore
VALUES('aaa0009');
INSERT INTO Operatore
VALUES('aaa0010');
INSERT INTO Operatore
VALUES('aaa0011');
INSERT INTO Operatore
VALUES('aaa0012');
INSERT INTO Operatore
VALUES('aaa0013');
INSERT INTO Operatore
VALUES('aaa0014');
INSERT INTO Operatore
VALUES('aaa0015');
INSERT INTO Operatore
VALUES('aaa0016');
INSERT INTO Operatore
VALUES('aaa0017');
INSERT INTO Operatore
VALUES('aaa0018');
INSERT INTO Operatore
VALUES('aaa0019');
INSERT INTO Operatore
VALUES('aaa0020');


-- pulizia locale
INSERT INTO Intervento_Pulizia
VALUES('aaa0000','aaa0000', '2019-09-02 12:00:00', 'Idropulitrice', NULL);
INSERT INTO Intervento_Pulizia
VALUES('aaa0001','aaa0000', '2019-09-07 17:00:00', NULL,'aaa0018');
INSERT INTO Intervento_Pulizia
VALUES('aaa0002','aaa0001', '2019-09-01 12:00:00', NULL, 'aaa0000');
INSERT INTO Intervento_Pulizia
VALUES('aaa0003','aaa0001', '2019-09-02 12:00:00', 'Igienizzatore', null );
INSERT INTO Intervento_Pulizia
VALUES( 'aaa0004' ,'aaa0002', '2019-09-09 09:00:00', 'Aspiratore', NULL );
INSERT INTO Intervento_Pulizia
VALUES('aaa0005' , 'aaa0002', '2019-09-02 10:00:00', NULL, 'aaa0001' );
INSERT INTO Intervento_Pulizia
VALUES('aaa0006' , 'aaa0003', '2019-09-02 12:00:00','Igienizzatore', null );
INSERT INTO Intervento_Pulizia
VALUES('aaa0007' , 'aaa0003', '2019-09-02 19:00:00', 'Aspiratore', NULL );
INSERT INTO Intervento_Pulizia
VALUES('aaa0008' , 'aaa0004', '2019-09-02 12:00:00', NULL, 'aaa0002');
INSERT INTO Intervento_Pulizia
VALUES('aaa0009' , 'aaa0004', '2019-09-07 17:00:00',NULL, 'aaa0003');
INSERT INTO Intervento_Pulizia
VALUES('aaa0010' , 'aaa0005', '2019-09-01 12:00:00', 'Igienizzatore', null );
INSERT INTO Intervento_Pulizia
VALUES('aaa0011' , 'aaa0005', '2019-09-02 12:00:00', 'Aspiratore', NULL );
INSERT INTO Intervento_Pulizia
VALUES('aaa0012' , 'aaa0006', '2019-09-09 09:00:00', NULL, 'aaa0004');
INSERT INTO Intervento_Pulizia
VALUES('aaa0013' ,'aaa0006', '2019-09-02 10:00:00', NULL, 'aaa0004');
INSERT INTO Intervento_Pulizia
VALUES('aaa0014' ,'aaa0007', '2019-09-02 12:00:00', 'Idropulitrice', NULL);
INSERT INTO Intervento_Pulizia
VALUES('aaa0015' ,'aaa0007', '2019-09-02 19:00:00', NULL, 'aaa0004');
INSERT INTO Intervento_Pulizia
VALUES('aaa0016' ,'aaa0008', '2019-09-01 12:00:00', NULL, 'aaa0004');
INSERT INTO Intervento_Pulizia
VALUES('aaa0017' ,'aaa0008', '2019-09-02 12:00:00', 'Aspiratore', NULL );
INSERT INTO Intervento_Pulizia
VALUES('aaa0018' ,'aaa0009', '2019-09-09 09:00:00', 'Idropulitrice', NULL);
INSERT INTO Intervento_Pulizia
VALUES('aaa0019' ,'aaa0009', '2019-09-02 10:00:00', NULL, 'aaa0004');
INSERT INTO Intervento_Pulizia
VALUES('aaa0020' ,'aaa0010', '2019-09-02 12:00:00', 'Aspiratore', NULL );
INSERT INTO Intervento_Pulizia
VALUES('aaa0021' ,'aaa0010', '2019-09-02 19:00:00','Idropulitrice', NULL);
INSERT INTO Intervento_Pulizia
VALUES('aaa0022' ,'aaa0011', '2019-09-02 12:00:00', NULL, 'aaa0007');
INSERT INTO Intervento_Pulizia
VALUES('aaa0023' ,'aaa0011', '2019-09-07 17:00:00','Idropulitrice', NULL);
INSERT INTO Intervento_Pulizia
VALUES('aaa0024' ,'aaa0012', '2019-09-01 12:00:00', 'Aspiratore', NULL );
INSERT INTO Intervento_Pulizia
VALUES('aaa0025' ,'aaa0012', '2019-09-02 12:00:00',NULL, 'aaa0006');
INSERT INTO Intervento_Pulizia
VALUES('aaa0026' ,'aaa0013', '2019-09-09 09:00:00', NULL, 'aaa0005');
INSERT INTO Intervento_Pulizia
VALUES('aaa0027' ,'aaa0013', '2019-09-02 10:00:00', 'Aspiratore', NULL );
INSERT INTO Intervento_Pulizia
VALUES('aaa0028' ,'aaa0014', '2019-09-02 12:00:00',  'Igienizzatore', null );
INSERT INTO Intervento_Pulizia
VALUES('aaa0029' ,'aaa0014', '2019-09-02 19:00:00', NULL, 'aaa0014');
INSERT INTO Intervento_Pulizia
VALUES('aaa0030' ,'aaa0015', '2019-09-02 12:00:00', 'Idropulitrice', NULL);
INSERT INTO Intervento_Pulizia
VALUES('aaa0031' ,'aaa0015', '2019-09-07 17:00:00',  'Igienizzatore', null );
INSERT INTO Intervento_Pulizia
VALUES('aaa0032' ,'aaa0016', '2019-09-01 12:00:00', NULL, 'aaa0013');
INSERT INTO Intervento_Pulizia
VALUES('aaa0033' ,'aaa0016', '2019-09-02 12:00:00', 'Igienizzatore', null );
INSERT INTO Intervento_Pulizia
VALUES('aaa0034' ,'aaa0017', '2019-09-09 09:00:00', 'Aspiratore', NULL );
INSERT INTO Intervento_Pulizia
VALUES('aaa0035' ,'aaa0017', '2019-09-02 10:00:00', 'Idropulitrice', NULL);
INSERT INTO Intervento_Pulizia
VALUES('aaa0036' ,'aaa0018', '2019-09-02 12:00:00', 'Igienizzatore', null );
INSERT INTO Intervento_Pulizia
VALUES('aaa0037' ,'aaa0018', '2019-09-02 19:00:00', NULL, 'aaa0018');
INSERT INTO Intervento_Pulizia
VALUES('aaa0038' ,'aaa0019', '2019-09-01 12:00:00', 'Aspiratore', NULL );
INSERT INTO Intervento_Pulizia
VALUES('aaa0039' ,'aaa0019', '2019-09-02 12:00:00', 'Idropulitrice', NULL);
INSERT INTO Intervento_Pulizia
VALUES('aaa0040' ,'aaa0020', '2019-09-09 09:00:00', 'Igienizzatore', null );
INSERT INTO Intervento_Pulizia
VALUES('aaa0041' ,'aaa0020', '2019-09-02 10:00:00', 'Aspiratore', NULL );
INSERT INTO Intervento_Pulizia
VALUES('aaa0042' ,'aaa0021', '2019-09-02 12:00:00',  NULL, 'aaa0011');
INSERT INTO Intervento_Pulizia
VALUES('aaa0043' ,'aaa0021', '2019-09-02 19:00:00', 'Idropulitrice', NULL);
INSERT INTO Intervento_Pulizia
VALUES('aaa0044' ,'aaa0022', '2019-09-09 09:00:00',  NULL, 'aaa0003');
INSERT INTO Intervento_Pulizia
VALUES('aaa0045' ,'aaa0022', '2019-09-02 10:00:00', 'Aspiratore', NULL );
INSERT INTO Intervento_Pulizia
VALUES('aaa0046' ,'aaa0023', '2019-09-02 12:00:00', 'Idropulitrice', NULL);
INSERT INTO Intervento_Pulizia
VALUES('aaa0047' ,'aaa0023', '2019-09-02 19:00:00', 'Aspiratore', NULL );

-- pulizia locale
INSERT INTO Pulizia_Locale
VALUES('aaa0000', '2019-09-02 17:00:00');
INSERT INTO Pulizia_Locale
VALUES('aaa0003', '2019-09-06 12:00:00');
INSERT INTO Pulizia_Locale
VALUES( 'aaa0004', '2019-09-09 15:00:00');
INSERT INTO Pulizia_Locale
VALUES('aaa0007' , '2019-09-03 17:00:00');
INSERT INTO Pulizia_Locale
VALUES('aaa0009' , '2019-09-08 17:30:00');
INSERT INTO Pulizia_Locale
VALUES('aaa0010' ,'2019-09-01 12:45:00' );
INSERT INTO Pulizia_Locale
VALUES('aaa0012' ,  '2019-09-10 07:00:00');
INSERT INTO Pulizia_Locale
VALUES('aaa0014' , '2019-09-02 14:00:00');
INSERT INTO Pulizia_Locale
VALUES('aaa0017' , '2019-09-02 19:00:00');
INSERT INTO Pulizia_Locale
VALUES('aaa0018', '2019-09-09 09:50:00');
INSERT INTO Pulizia_Locale
VALUES('aaa0020' , '2019-09-02 17:00:00');
INSERT INTO Pulizia_Locale
VALUES('aaa0022' , '2019-09-03 08:00:00');
INSERT INTO Pulizia_Locale
VALUES('aaa0025' , '2019-09-02 13:00:00');
INSERT INTO Pulizia_Locale
VALUES('aaa0026', '2019-09-09 09:33:00');
INSERT INTO Pulizia_Locale
VALUES('aaa0029' , '2019-09-03 10:00:00');
INSERT INTO Pulizia_Locale
VALUES('aaa0030' , '2019-09-02 14:00:00');
INSERT INTO Pulizia_Locale
VALUES('aaa0033' , '2019-09-02 17:20:00');
INSERT INTO Pulizia_Locale
VALUES('aaa0034' , '2019-09-09 10:00:00');
INSERT INTO Pulizia_Locale
VALUES('aaa0037' , '2019-09-03 10:00:00');
INSERT INTO Pulizia_Locale
VALUES('aaa0038', '2019-09-01 16:10:00');
INSERT INTO Pulizia_Locale
VALUES('aaa0041' ,'2019-09-02 11:40:00');
INSERT INTO Pulizia_Locale
VALUES('aaa0042' , '2019-09-02 16:00:00');
INSERT INTO Pulizia_Locale
VALUES('aaa0045' ,'2019-09-02 14:23:00');
INSERT INTO Pulizia_Locale
VALUES('aaa0046','2019-09-02 12:44:00');
create sequence TRANSACTION_STYLE_SEQ start with 1 increment by 1;

insert into TRANSACTION_STYLE values (TRANSACTION_STYLE_SEQ.nextval, 'EUROPEAN');
insert into TRANSACTION_STYLE values (TRANSACTION_STYLE_SEQ.nextval, 'AMERICAN');

create sequence CUSTOMER_SEQ start with 1 increment by 1;

insert into CUSTOMER values (CUSTOMER_SEQ.nextval, 'PLUTO1');
insert into CUSTOMER values (CUSTOMER_SEQ.nextval, 'PLUTO2');

create sequence CURRENCY_SEQ start with 1 increment by 1;

INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'AFGHANISTAN','Afghani','AFN','971');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'ÅLAND ISLANDS','Euro','EUR','978');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'ALBANIA','Lek','ALL','008');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'ALGERIA','Algerian Dinar','DZD','012');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'AMERICAN SAMOA','US Dollar','USD','840');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'ANDORRA','Euro','EUR','978');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'ANGOLA','Kwanza','AOA','973');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'ANGUILLA','East Caribbean Dollar','XCD','951');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'ANTARCTICA','No universal currency','','');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'ANTIGUA AND BARBUDA','East Caribbean Dollar','XCD','951');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'ARGENTINA','Argentine Peso','ARS','032');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'ARMENIA','Armenian Dram','AMD','051');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'ARUBA','Aruban Florin','AWG','533');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'AUSTRALIA','Australian Dollar','AUD','036');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'AUSTRIA','Euro','EUR','978');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'AZERBAIJAN','Azerbaijan Manat','AZN','944');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'BAHAMAS (THE)','Bahamian Dollar','BSD','044');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'BAHRAIN','Bahraini Dinar','BHD','048');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'BANGLADESH','Taka','BDT','050');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'BARBADOS','Barbados Dollar','BBD','052');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'BELARUS','Belarusian Ruble','BYN','933');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'BELGIUM','Euro','EUR','978');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'BELIZE','Belize Dollar','BZD','084');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'BENIN','CFA Franc BCEAO','XOF','952');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'BERMUDA','Bermudian Dollar','BMD','060');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'BHUTAN','Indian Rupee','INR','356');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'BHUTAN','Ngultrum','BTN','064');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'BOLIVIA (PLURINATIONAL STATE OF)','Boliviano','BOB','068');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'BOLIVIA (PLURINATIONAL STATE OF)','Mvdol','BOV','984');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'BONAIRE, SINT EUSTATIUS AND SABA','US Dollar','USD','840');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'BOSNIA AND HERZEGOVINA','Convertible Mark','BAM','977');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'BOTSWANA','Pula','BWP','072');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'BOUVET ISLAND','Norwegian Krone','NOK','578');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'BRAZIL','Brazilian Real','BRL','986');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'BRITISH INDIAN OCEAN TERRITORY (THE)','US Dollar','USD','840');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'BRUNEI DARUSSALAM','Brunei Dollar','BND','096');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'BULGARIA','Bulgarian Lev','BGN','975');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'BURKINA FASO','CFA Franc BCEAO','XOF','952');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'BURUNDI','Burundi Franc','BIF','108');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'CABO VERDE','Cabo Verde Escudo','CVE','132');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'CAMBODIA','Riel','KHR','116');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'CAMEROON','CFA Franc BEAC','XAF','950');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'CANADA','Canadian Dollar','CAD','124');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'CAYMAN ISLANDS (THE)','Cayman Islands Dollar','KYD','136');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'CENTRAL AFRICAN REPUBLIC (THE)','CFA Franc BEAC','XAF','950');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'CHAD','CFA Franc BEAC','XAF','950');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'CHILE','Chilean Peso','CLP','152');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'CHILE','Unidad de Fomento','CLF','990');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'CHINA','Yuan Renminbi','CNY','156');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'CHRISTMAS ISLAND','Australian Dollar','AUD','036');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'COCOS (KEELING) ISLANDS (THE)','Australian Dollar','AUD','036');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'COLOMBIA','Colombian Peso','COP','170');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'COLOMBIA','Unidad de Valor Real','COU','970');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'COMOROS (THE)','Comorian Franc ','KMF','174');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'CONGO (THE DEMOCRATIC REPUBLIC OF THE)','Congolese Franc','CDF','976');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'CONGO (THE)','CFA Franc BEAC','XAF','950');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'COOK ISLANDS (THE)','New Zealand Dollar','NZD','554');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'COSTA RICA','Costa Rican Colon','CRC','188');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'CÔTE D''IVOIRE','CFA Franc BCEAO','XOF','952');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'CROATIA','Kuna','HRK','191');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'CUBA','Cuban Peso','CUP','192');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'CUBA','Peso Convertible','CUC','931');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'CURAÇAO','Netherlands Antillean Guilder','ANG','532');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'CYPRUS','Euro','EUR','978');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'CZECHIA','Czech Koruna','CZK','203');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'DENMARK','Danish Krone','DKK','208');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'DJIBOUTI','Djibouti Franc','DJF','262');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'DOMINICA','East Caribbean Dollar','XCD','951');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'DOMINICAN REPUBLIC (THE)','Dominican Peso','DOP','214');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'ECUADOR','US Dollar','USD','840');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'EGYPT','Egyptian Pound','EGP','818');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'EL SALVADOR','El Salvador Colon','SVC','222');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'EL SALVADOR','US Dollar','USD','840');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'EQUATORIAL GUINEA','CFA Franc BEAC','XAF','950');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'ERITREA','Nakfa','ERN','232');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'ESTONIA','Euro','EUR','978');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'ETHIOPIA','Ethiopian Birr','ETB','230');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'EUROPEAN UNION','Euro','EUR','978');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'FALKLAND ISLANDS (THE) [MALVINAS]','Falkland Islands Pound','FKP','238');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'FAROE ISLANDS (THE)','Danish Krone','DKK','208');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'FIJI','Fiji Dollar','FJD','242');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'FINLAND','Euro','EUR','978');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'FRANCE','Euro','EUR','978');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'FRENCH GUIANA','Euro','EUR','978');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'FRENCH POLYNESIA','CFP Franc','XPF','953');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'FRENCH SOUTHERN TERRITORIES (THE)','Euro','EUR','978');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'GABON','CFA Franc BEAC','XAF','950');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'GAMBIA (THE)','Dalasi','GMD','270');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'GEORGIA','Lari','GEL','981');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'GERMANY','Euro','EUR','978');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'GHANA','Ghana Cedi','GHS','936');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'GIBRALTAR','Gibraltar Pound','GIP','292');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'GREECE','Euro','EUR','978');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'GREENLAND','Danish Krone','DKK','208');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'GRENADA','East Caribbean Dollar','XCD','951');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'GUADELOUPE','Euro','EUR','978');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'GUAM','US Dollar','USD','840');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'GUATEMALA','Quetzal','GTQ','320');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'GUERNSEY','Pound Sterling','GBP','826');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'GUINEA','Guinean Franc','GNF','324');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'GUINEA-BISSAU','CFA Franc BCEAO','XOF','952');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'GUYANA','Guyana Dollar','GYD','328');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'HAITI','Gourde','HTG','332');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'HAITI','US Dollar','USD','840');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'HEARD ISLAND AND McDONALD ISLANDS','Australian Dollar','AUD','036');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'HOLY SEE (THE)','Euro','EUR','978');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'HONDURAS','Lempira','HNL','340');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'HONG KONG','Hong Kong Dollar','HKD','344');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'HUNGARY','Forint','HUF','348');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'ICELAND','Iceland Krona','ISK','352');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'INDIA','Indian Rupee','INR','356');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'INDONESIA','Rupiah','IDR','360');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'INTERNATIONAL MONETARY FUND (IMF) ','SDR (Special Drawing Right)','XDR','960');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'IRAN (ISLAMIC REPUBLIC OF)','Iranian Rial','IRR','364');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'IRAQ','Iraqi Dinar','IQD','368');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'IRELAND','Euro','EUR','978');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'ISLE OF MAN','Pound Sterling','GBP','826');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'ISRAEL','New Israeli Sheqel','ILS','376');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'ITALY','Euro','EUR','978');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'JAMAICA','Jamaican Dollar','JMD','388');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'JAPAN','Yen','JPY','392');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'JERSEY','Pound Sterling','GBP','826');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'JORDAN','Jordanian Dinar','JOD','400');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'KAZAKHSTAN','Tenge','KZT','398');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'KENYA','Kenyan Shilling','KES','404');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'KIRIBATI','Australian Dollar','AUD','036');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'KOREA (THE DEMOCRATIC PEOPLE’S REPUBLIC OF)','North Korean Won','KPW','408');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'KOREA (THE REPUBLIC OF)','Won','KRW','410');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'KUWAIT','Kuwaiti Dinar','KWD','414');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'KYRGYZSTAN','Som','KGS','417');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'LAO PEOPLE’S DEMOCRATIC REPUBLIC (THE)','Lao Kip','LAK','418');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'LATVIA','Euro','EUR','978');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'LEBANON','Lebanese Pound','LBP','422');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'LESOTHO','Loti','LSL','426');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'LESOTHO','Rand','ZAR','710');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'LIBERIA','Liberian Dollar','LRD','430');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'LIBYA','Libyan Dinar','LYD','434');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'LIECHTENSTEIN','Swiss Franc','CHF','756');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'LITHUANIA','Euro','EUR','978');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'LUXEMBOURG','Euro','EUR','978');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'MACAO','Pataca','MOP','446');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'MACEDONIA (THE FORMER YUGOSLAV REPUBLIC OF)','Denar','MKD','807');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'MADAGASCAR','Malagasy Ariary','MGA','969');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'MALAWI','Malawi Kwacha','MWK','454');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'MALAYSIA','Malaysian Ringgit','MYR','458');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'MALDIVES','Rufiyaa','MVR','462');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'MALI','CFA Franc BCEAO','XOF','952');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'MALTA','Euro','EUR','978');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'MARSHALL ISLANDS (THE)','US Dollar','USD','840');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'MARTINIQUE','Euro','EUR','978');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'MAURITANIA','Ouguiya','MRU','929');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'MAURITIUS','Mauritius Rupee','MUR','480');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'MAYOTTE','Euro','EUR','978');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'MEMBER COUNTRIES OF THE AFRICAN DEVELOPMENT BANK GROUP','ADB Unit of Account','XUA','965');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'MEXICO','Mexican Peso','MXN','484');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'MEXICO','Mexican Unidad de Inversion (UDI)','MXV','979');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'MICRONESIA (FEDERATED STATES OF)','US Dollar','USD','840');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'MOLDOVA (THE REPUBLIC OF)','Moldovan Leu','MDL','498');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'MONACO','Euro','EUR','978');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'MONGOLIA','Tugrik','MNT','496');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'MONTENEGRO','Euro','EUR','978');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'MONTSERRAT','East Caribbean Dollar','XCD','951');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'MOROCCO','Moroccan Dirham','MAD','504');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'MOZAMBIQUE','Mozambique Metical','MZN','943');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'MYANMAR','Kyat','MMK','104');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'NAMIBIA','Namibia Dollar','NAD','516');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'NAMIBIA','Rand','ZAR','710');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'NAURU','Australian Dollar','AUD','036');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'NEPAL','Nepalese Rupee','NPR','524');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'NETHERLANDS (THE)','Euro','EUR','978');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'NEW CALEDONIA','CFP Franc','XPF','953');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'NEW ZEALAND','New Zealand Dollar','NZD','554');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'NICARAGUA','Cordoba Oro','NIO','558');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'NIGER (THE)','CFA Franc BCEAO','XOF','952');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'NIGERIA','Naira','NGN','566');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'NIUE','New Zealand Dollar','NZD','554');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'NORFOLK ISLAND','Australian Dollar','AUD','036');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'NORTHERN MARIANA ISLANDS (THE)','US Dollar','USD','840');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'NORWAY','Norwegian Krone','NOK','578');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'OMAN','Rial Omani','OMR','512');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'PAKISTAN','Pakistan Rupee','PKR','586');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'PALAU','US Dollar','USD','840');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'PALESTINE, STATE OF','No universal currency','','');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'PANAMA','Balboa','PAB','590');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'PANAMA','US Dollar','USD','840');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'PAPUA NEW GUINEA','Kina','PGK','598');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'PARAGUAY','Guarani','PYG','600');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'PERU','Sol','PEN','604');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'PHILIPPINES (THE)','Philippine Piso','PHP','608');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'PITCAIRN','New Zealand Dollar','NZD','554');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'POLAND','Zloty','PLN','985');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'PORTUGAL','Euro','EUR','978');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'PUERTO RICO','US Dollar','USD','840');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'QATAR','Qatari Rial','QAR','634');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'RÉUNION','Euro','EUR','978');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'ROMANIA','Romanian Leu','RON','946');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'RUSSIAN FEDERATION (THE)','Russian Ruble','RUB','643');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'RWANDA','Rwanda Franc','RWF','646');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'SAINT BARTHÉLEMY','Euro','EUR','978');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'SAINT HELENA, ASCENSION AND TRISTAN DA CUNHA','Saint Helena Pound','SHP','654');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'SAINT KITTS AND NEVIS','East Caribbean Dollar','XCD','951');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'SAINT LUCIA','East Caribbean Dollar','XCD','951');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'SAINT MARTIN (FRENCH PART)','Euro','EUR','978');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'SAINT PIERRE AND MIQUELON','Euro','EUR','978');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'SAINT VINCENT AND THE GRENADINES','East Caribbean Dollar','XCD','951');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'SAMOA','Tala','WST','882');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'SAN MARINO','Euro','EUR','978');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'SAO TOME AND PRINCIPE','Dobra','STN','930');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'SAUDI ARABIA','Saudi Riyal','SAR','682');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'SENEGAL','CFA Franc BCEAO','XOF','952');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'SERBIA','Serbian Dinar','RSD','941');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'SEYCHELLES','Seychelles Rupee','SCR','690');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'SIERRA LEONE','Leone','SLL','694');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'SINGAPORE','Singapore Dollar','SGD','702');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'SINT MAARTEN (DUTCH PART)','Netherlands Antillean Guilder','ANG','532');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'SISTEMA UNITARIO DE COMPENSACION REGIONAL DE PAGOS "SUCRE"','Sucre','XSU','994');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'SLOVAKIA','Euro','EUR','978');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'SLOVENIA','Euro','EUR','978');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'SOLOMON ISLANDS','Solomon Islands Dollar','SBD','090');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'SOMALIA','Somali Shilling','SOS','706');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'SOUTH AFRICA','Rand','ZAR','710');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS','No universal currency','','');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'SOUTH SUDAN','South Sudanese Pound','SSP','728');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'SPAIN','Euro','EUR','978');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'SRI LANKA','Sri Lanka Rupee','LKR','144');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'SUDAN (THE)','Sudanese Pound','SDG','938');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'SURINAME','Surinam Dollar','SRD','968');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'SVALBARD AND JAN MAYEN','Norwegian Krone','NOK','578');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'SWAZILAND','Lilangeni','SZL','748');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'SWEDEN','Swedish Krona','SEK','752');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'SWITZERLAND','Swiss Franc','CHF','756');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'SWITZERLAND','WIR Euro','CHE','947');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'SWITZERLAND','WIR Franc','CHW','948');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'SYRIAN ARAB REPUBLIC','Syrian Pound','SYP','760');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'TAIWAN (PROVINCE OF CHINA)','New Taiwan Dollar','TWD','901');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'TAJIKISTAN','Somoni','TJS','972');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'TANZANIA, UNITED REPUBLIC OF','Tanzanian Shilling','TZS','834');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'THAILAND','Baht','THB','764');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'TIMOR-LESTE','US Dollar','USD','840');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'TOGO','CFA Franc BCEAO','XOF','952');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'TOKELAU','New Zealand Dollar','NZD','554');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'TONGA','Pa’anga','TOP','776');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'TRINIDAD AND TOBAGO','Trinidad and Tobago Dollar','TTD','780');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'TUNISIA','Tunisian Dinar','TND','788');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'TURKEY','Turkish Lira','TRY','949');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'TURKMENISTAN','Turkmenistan New Manat','TMT','934');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'TURKS AND CAICOS ISLANDS (THE)','US Dollar','USD','840');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'TUVALU','Australian Dollar','AUD','036');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'UGANDA','Uganda Shilling','UGX','800');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'UKRAINE','Hryvnia','UAH','980');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'UNITED ARAB EMIRATES (THE)','UAE Dirham','AED','784');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'UNITED KINGDOM OF GREAT BRITAIN AND NORTHERN IRELAND (THE)','Pound Sterling','GBP','826');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'UNITED STATES MINOR OUTLYING ISLANDS (THE)','US Dollar','USD','840');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'UNITED STATES OF AMERICA (THE)','US Dollar','USD','840');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'UNITED STATES OF AMERICA (THE)','US Dollar (Next day)','USN','997');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'URUGUAY','Peso Uruguayo','UYU','858');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'URUGUAY','Uruguay Peso en Unidades Indexadas (UI)','UYI','940');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'UZBEKISTAN','Uzbekistan Sum','UZS','860');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'VANUATU','Vatu','VUV','548');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'VENEZUELA (BOLIVARIAN REPUBLIC OF)','Bolívar','VEF','937');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'VIET NAM','Dong','VND','704');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'VIRGIN ISLANDS (BRITISH)','US Dollar','USD','840');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'VIRGIN ISLANDS (U.S.)','US Dollar','USD','840');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'WALLIS AND FUTUNA','CFP Franc','XPF','953');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'WESTERN SAHARA','Moroccan Dirham','MAD','504');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'YEMEN','Yemeni Rial','YER','886');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'ZAMBIA','Zambian Kwacha','ZMW','967');
INSERT INTO CURRENCY(id, entity, name, ALPHA_CODE, NUMERIC_CODE) VALUES (CURRENCY_SEQ.nextVal,'ZIMBABWE','Zimbabwe Dollar','ZWL','932');

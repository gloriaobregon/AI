IF [Vehicle Make] = '1234' 
OR CONTAINS(LOWER([Vehicle Model]), LOWER('GPS')) 
OR CONTAINS(LOWER([Vehicle Make]), LOWER('EVIL')) 
OR CONTAINS(LOWER([Vehicle Make]), LOWER('Day Break')) 

THEN 'Dummy'

ELSEIF CONTAINS(LOWER([Vehicle Make]), LOWER('abarth'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('abath'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('arbath'))
THEN 'Abarth'

ELSEIF CONTAINS(LOWER([Vehicle Make]), LOWER('alfa'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('alpha')) THEN 'Alfa Romeo'


ELSEIF CONTAINS(LOWER([Vehicle Make]), LOWER('audi'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('quattro'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('aude'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('ausi'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('quattro')) 
OR CONTAINS(LOWER([Vehicle Model]), LOWER('quattro'))
OR CONTAINS(LOWER([Vehicle Model]), LOWER('Q'))

THEN 'Audi'

ELSEIF CONTAINS(lower([Vehicle Make]), LOWER('aston'))
THEN 'Aston Martin'

ELSEIF CONTAINS(lower([Vehicle Make]), LOWER('bentley'))
THEN 'Bentley'

ELSEIF CONTAINS(lower([Vehicle Make]), LOWER('bmw'))
OR CONTAINS(lower([Vehicle Make]), LOWER('bme'))
OR [Vehicle Model] = 'X6'
OR [Vehicle Make] = 'M'
THEN 'BMW'

ELSEIF CONTAINS(lower([Vehicle Make]), LOWER('bugatti'))
THEN 'Bugatti'

ELSEIF CONTAINS(LOWER([Vehicle Make]), LOWER('cadillac'))
THEN 'Cadillac'

ELSEIF CONTAINS(lower([Vehicle Make]), LOWER('cherv'))
OR CONTAINS(lower([Vehicle Make]), LOWER('chev'))
OR CONTAINS(lower([Vehicle Make]), LOWER('chrev'))
THEN 'Chevrolet'

ELSEIF CONTAINS(lower([Vehicle Make]), LOWER('corvette'))
OR CONTAINS(lower([Vehicle Make]), LOWER('corevette'))
THEN 'Corvette'

ELSEIF CONTAINS(LOWER([Vehicle Make]), LOWER('chery'))
THEN 'Chery'

ELSEIF CONTAINS(lower([Vehicle Make]), LOWER('chry'))
OR CONTAINS(lower([Vehicle Make]), LOWER('chrsy'))
OR CONTAINS(lower([Vehicle Make]), LOWER('cry'))
OR CONTAINS(lower([Vehicle Make]), LOWER('c h r'))
OR CONTAINS(lower([Vehicle Make]), LOWER('CHYRSLER'))

THEN 'Chrysler'

ELSEIF CONTAINS(lower([Vehicle Make]), LOWER('citr'))
THEN 'Citroen'

ELSEIF CONTAINS(LOWER([Vehicle Make]), LOWER('daihatsu'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('diahatsu'))
THEN 'Daihatsu'

ELSEIF CONTAINS(LOWER([Vehicle Make]), LOWER('daewoo')) THEN 'Daewoo'

ELSEIF CONTAINS(lower([Vehicle Make]), LOWER('daimler'))
THEN 'Daimler'

ELSEIF CONTAINS(LOWER([Vehicle Make]), LOWER('dodge'))
THEN 'Dodge'

ELSEIF CONTAINS(lower([Vehicle Make]), LOWER('fiat'))
THEN 'Fiat'

ELSEIF CONTAINS(lower([Vehicle Make]), LOWER('ferrari'))
OR CONTAINS(lower([Vehicle Make]), LOWER('ferarri'))
OR CONTAINS(lower([Vehicle Make]), LOWER('458'))
THEN 'Ferrari'

ELSEIF CONTAINS(lower([Vehicle Make]), LOWER('ford'))
OR CONTAINS(lower([Vehicle Make]), LOWER('territory'))
OR CONTAINS(lower([Vehicle Make]), LOWER('focus'))
OR CONTAINS(lower([Vehicle Model]), LOWER('territory'))
OR CONTAINS(lower([Vehicle Model]), LOWER('falcon'))
OR CONTAINS(lower([Vehicle Make]), LOWER('MUSTANG'))
OR CONTAINS(lower([Vehicle Make]), LOWER('FOED'))
THEN 'Ford'

ELSEIF CONTAINS(LOWER([Vehicle Make]), LOWER('foton'))
THEN 'Foton'

ELSEIF CONTAINS(LOWER([Vehicle Make]), LOWER('fpv'))
THEN 'FPV'

ELSEIF CONTAINS(LOWER([Vehicle Make]), LOWER('Fuso'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('canter'))
THEN 'Fuso'

ELSEIF CONTAINS(lower([Vehicle Make]), LOWER('geely'))
THEN 'Geely'

ELSEIF CONTAINS(lower([Vehicle Make]), LOWER('gmc'))
THEN 'GMC'

ELSEIF CONTAINS(lower([Vehicle Make]), LOWER('great wall'))
OR  CONTAINS(lower([Vehicle Make]), LOWER('greatwall'))
THEN 'Great Wall'

ELSEIF CONTAINS(lower([Vehicle Make]), LOWER('Haval'))
THEN 'Haval'


ELSEIF CONTAINS(lower([Vehicle Make]), LOWER('harley'))
THEN 'Harley Davidson'

ELSEIF CONTAINS(lower([Vehicle Make]), LOWER('holden special vehicles'))
OR CONTAINS(lower([Vehicle Make]), LOWER('hsv'))
OR CONTAINS(lower([Vehicle Make]), LOWER('hvs'))
THEN 'HSV'

ELSEIF CONTAINS(lower([Vehicle Make]), LOWER('holde'))
OR CONTAINS(lower([Vehicle Make]), LOWER('barina'))
OR CONTAINS(lower([Vehicle Make]), LOWER('astra'))
OR CONTAINS(lower([Vehicle Make]), LOWER('holen'))
OR CONTAINS(lower([Vehicle Make]), LOWER('hoden'))
OR CONTAINS(lower([Vehicle Make]), LOWER('hlden'))
OR CONTAINS(lower([Vehicle Make]), LOWER('holedn'))
OR CONTAINS(lower([Vehicle Make]), LOWER('commodore'))
OR CONTAINS(LOWER([Vehicle Model]), LOWER('holden'))
OR CONTAINS(LOWER([Vehicle Model]), LOWER('astra'))
OR CONTAINS(LOWER([Vehicle Model]), LOWER('captiva'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('captiva'))
OR CONTAINS(LOWER([Vehicle Model]), LOWER('colorado'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('Commodere'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('HO'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('HOLD'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('HOLDN'))


THEN 'Holden'

ELSEIF CONTAINS(lower([Vehicle Make]), LOWER('honda'))
OR CONTAINS(lower([Vehicle Make]), LOWER('hionda'))
OR CONTAINS(lower([Vehicle Make]), LOWER('civic'))
OR CONTAINS(lower([Vehicle Model]), LOWER('civic'))
OR CONTAINS(lower([Vehicle Model]), LOWER('hoonda'))
OR CONTAINS(lower([Vehicle Model]), LOWER('ACCORD'))

THEN 'Honda'

ELSEIF CONTAINS(LOWER([Vehicle Make]), LOWER('hummer'))
THEN 'Hummer'

ELSEIF CONTAINS(LOWER([Vehicle Make]), LOWER('hyu'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('hya'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('hunday'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('ndai'))
OR CONTAINS(LOWER([Vehicle Model]), LOWER('accent'))
OR CONTAINS(LOWER([Vehicle Model]), LOWER('imax'))
OR CONTAINS(LOWER([Vehicle Model]), LOWER('tucson'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('santa fe'))
THEN 'Hyundai'

ELSEIF CONTAINS(LOWER([Vehicle Make]), LOWER('infinity'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('infiniti'))
THEN 'Infiniti'

ELSEIF CONTAINS(lower([Vehicle Make]), LOWER('isuzu'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('izusu'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('asuzu'))
OR CONTAINS(lower([Vehicle Model]), LOWER('isuzu'))
OR CONTAINS(lower([Vehicle Make]), LOWER('izuzu'))
THEN 'Isuzu'

ELSEIF CONTAINS(lower([Vehicle Make]), LOWER('iveco'))
THEN 'Iveco'

ELSEIF CONTAINS(lower([Vehicle Make]), LOWER('jaguar'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('jagurar'))
THEN 'Jaguar'

ELSEIF CONTAINS(LOWER([Vehicle Make]), LOWER('jeep'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('grand ch'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('jepp'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('wrangler'))
OR CONTAINS(LOWER([Vehicle Model]), LOWER('cherokee'))
THEN 'Jeep'

ELSEIF CONTAINS(LOWER([Vehicle Make]), LOWER('jmc'))
THEN 'JMC'

ELSEIF CONTAINS(LOWER([Vehicle Make]), LOWER('kawasaki'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('kawazaki'))
THEN 'Kawasaki'

ELSEIF CONTAINS(LOWER([Vehicle Make]), LOWER('kia'))
OR CONTAINS(lower([Vehicle Make]), LOWER('carnival'))
OR CONTAINS(lower([Vehicle Model]), LOWER('carnival'))
OR CONTAINS(LOWER([Vehicle Model]), LOWER('sportage'))
THEN 'Kia'

ELSEIF CONTAINS(LOWER([Vehicle Make]), LOWER('ktm'))
THEN 'KTM'

ELSEIF CONTAINS(LOWER([Vehicle Make]), LOWER('ldv'))
OR CONTAINS(LOWER([Vehicle Model]), LOWER('ldv'))
THEN 'LDV'

ELSEIF CONTAINS(lower([Vehicle Make]), LOWER('lambo'))
THEN 'Lamborghini'

ELSEIF CONTAINS(LOWER([Vehicle Make]), LOWER('rover'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('range'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('disco'))
OR CONTAINS(lower([Vehicle Model]), LOWER('rover'))
THEN 'Land Rover'

ELSEIF CONTAINS(LOWER([Vehicle Make]), LOWER('lexus'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('lexuz'))
THEN 'Lexus'

ELSEIF CONTAINS(LOWER([Vehicle Make]), LOWER('lincoln'))
THEN 'Lincoln'

ELSEIF CONTAINS(LOWER([Vehicle Make]), LOWER('lotus'))
THEN 'Lotus'

ELSEIF CONTAINS(LOWER([Vehicle Make]), LOWER('mahindra'))
THEN 'Mahindra'

ELSEIF CONTAINS(lower([Vehicle Make]), LOWER('maserati'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('maserti'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('maseratti'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('masserati'))
THEN 'Maserati'

ELSEIF CONTAINS(LOWER([Vehicle Make]), LOWER('mazda'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('madza'))
OR [Vehicle Make] = '3'
OR CONTAINS(LOWER([Vehicle Make]), LOWER('maxda'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('mazada'))
OR CONTAINS(lower([Vehicle Make]), LOWER('mzda'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('mada'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('eunos'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('cx3'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('cx 3'))
OR CONTAINS(lower([Vehicle Model]), LOWER('mazda'))
OR CONTAINS(lower([Vehicle Make]), LOWER('MZADA'))
THEN 'Mazda'

ELSEIF CONTAINS(LOWER([Vehicle Make]), LOWER('mclaren'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('maclaren'))
THEN 'McLaren'

ELSEIF CONTAINS(LOWER([Vehicle Make]), LOWER('mercede'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('benz'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('merc'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('MERECEDES'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('E250'))

THEN 'Mercedes Benz'

ELSEIF CONTAINS(lower([Vehicle Make]), LOWER('mitsu'))
OR CONTAINS(lower([Vehicle Make]), LOWER('mitso'))
OR CONTAINS(lower([Vehicle Make]), LOWER('mitsi'))
OR CONTAINS(lower([Vehicle Make]), LOWER('lancer'))
OR CONTAINS(lower([Vehicle Make]), LOWER('misubishi'))
OR CONTAINS(lower([Vehicle Make]), LOWER('mitshubishi'))
OR CONTAINS(lower([Vehicle Make]), LOWER('mitusbishi'))
OR CONTAINS(lower([Vehicle Make]), LOWER('outlander'))
OR CONTAINS(lower([Vehicle Make]), LOWER('mistu'))
OR CONTAINS(lower([Vehicle Model]), LOWER('lancer'))
OR CONTAINS(lower([Vehicle Model]), LOWER('magna'))
OR CONTAINS(lower([Vehicle Model]), LOWER('asx'))
OR CONTAINS(lower([Vehicle Make]), LOWER('Mirtsubishi'))
THEN 'Mitsubishi'

ELSEIF CONTAINS(lower([Vehicle Make]), LOWER('mg'))
OR CONTAINS(lower([Vehicle Make]), LOWER('m.g.'))
THEN 'MG'

ELSEIF CONTAINS(lower([Vehicle Make]), LOWER('mini'))
OR CONTAINS(lower([Vehicle Model]), LOWER('mini'))
OR CONTAINS(lower([Vehicle Make]), LOWER('cooper'))
THEN 'Mini'

ELSEIF CONTAINS(lower([Vehicle Make]), LOWER('New Holland'))
THEN 'New Holland'

ELSEIF CONTAINS(lower([Vehicle Make]), LOWER('nissan'))
OR CONTAINS(lower([Vehicle Make]), LOWER('nisssan'))
OR CONTAINS(lower([Vehicle Make]), LOWER('nissa'))
OR CONTAINS(lower([Vehicle Make]), LOWER('bissan'))
OR CONTAINS(lower([Vehicle Make]), LOWER('niassan'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('datsun'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('x-trail'))
OR CONTAINS(LOWER([Vehicle Model]), LOWER('x-trail'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('navara'))
OR CONTAINS(LOWER([Vehicle Model]), LOWER('QASHQAI'))

THEN 'Nissan'

ELSEIF CONTAINS(LOWER([Vehicle Make]), LOWER('Opel'))
THEN 'Opel'

ELSEIF CONTAINS(lower([Vehicle Make]), LOWER('peug'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('perguot'))
THEN 'Peugeot'

ELSEIF CONTAINS(LOWER([Vehicle Make]), LOWER('polaris'))
THEN 'Polaris'

ELSEIF CONTAINS(LOWER([Vehicle Make]), LOWER('pontiac'))
THEN 'Pontiac'

ELSEIF CONTAINS(LOWER([Vehicle Make]), LOWER('porsche'))
OR LEFT(LOWER([Vehicle Make]),3 ) = 'por' 
OR CONTAINS(LOWER([Vehicle Make]), LOWER('posche'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('PRSCHE'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('panamera'))
THEN 'Porsche'

ELSEIF CONTAINS(lower([Vehicle Make]), LOWER('proton'))
THEN 'Proton'

ELSEIF CONTAINS(LOWER([Vehicle Make]), LOWER('rolls-royce'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('rolls'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('roll royce'))
THEN 'Rolls Royce'

ELSEIF CONTAINS(lower([Vehicle Make]), LOWER('rena'))
OR CONTAINS(lower([Vehicle Make]), LOWER('renu'))
OR CONTAINS(lower([Vehicle Make]), LOWER('KOLEOS'))
OR CONTAINS(lower([Vehicle Make]), LOWER('Reanult'))
OR CONTAINS(lower([Vehicle Model]), LOWER('Renault'))
THEN 'Renault'

ELSEIF CONTAINS(lower([Vehicle Make]), LOWER('saab'))
THEN 'Saab'

ELSEIF CONTAINS(lower([Vehicle Make]), LOWER('skoda'))
OR CONTAINS(lower([Vehicle Make]), LOWER('skodi'))
THEN 'Skoda'

ELSEIF CONTAINS(lower([Vehicle Make]), LOWER('smart'))
THEN 'Smart'

ELSEIF CONTAINS(lower([Vehicle Make]), LOWER('ssang'))
OR CONTAINS(lower([Vehicle Make]), LOWER('sanyong'))
THEN 'SsangYong'

ELSEIF CONTAINS(lower([Vehicle Make]), LOWER('subar'))
OR CONTAINS(lower([Vehicle Make]), LOWER('suabru'))
OR CONTAINS(lower([Vehicle Make]), LOWER('subrau'))
OR CONTAINS(lower([Vehicle Make]), LOWER('subu'))
OR CONTAINS(lower([Vehicle Model]), LOWER('outback'))
OR CONTAINS(lower([Vehicle Model]), LOWER('impreza'))
OR CONTAINS(lower([Vehicle Model]), LOWER('wrx'))
THEN 'Subaru'

ELSEIF CONTAINS(lower([Vehicle Make]), LOWER('suzuki'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('susuki'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('sukuki'))
THEN 'Suzuki'

ELSEIF CONTAINS(lower([Vehicle Make]), LOWER('tata'))
THEN 'Tata'

ELSEIF CONTAINS(lower([Vehicle Make]), LOWER('tesla'))
OR CONTAINS(lower([Vehicle Make]), LOWER('telsa'))
THEN 'Tesla'

ELSEIF CONTAINS(lower([Vehicle Make]), LOWER('toy'))
OR CONTAINS(lower([Vehicle Make]), LOWER('landcruiser'))
OR CONTAINS(lower([Vehicle Make]), LOWER('hiace'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('corolla'))
OR CONTAINS(lower([Vehicle Make]), LOWER('toto'))
OR CONTAINS(lower([Vehicle Make]), LOWER('tyota'))
OR CONTAINS(lower([Vehicle Make]), LOWER('hilux'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('prado'))
OR CONTAINS(LOWER([Vehicle Model]), LOWER('prado'))
OR CONTAINS(LOWER([Vehicle Model]), LOWER('camry'))
OR CONTAINS(LOWER([Vehicle Model]), LOWER('toyota'))
OR CONTAINS(LOWER([Vehicle Model]), LOWER('hilux'))
OR CONTAINS(LOWER([Vehicle Model]), LOWER('corolla'))
OR CONTAINS(LOWER([Vehicle Model]), LOWER('kluger'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('COMMUTER'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('CAMRY'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('RAV'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('AURION'))




THEN 'Toyota'

ELSEIF CONTAINS(lower([Vehicle Make]), LOWER('trd'))
THEN 'TRD'

ELSEIF CONTAINS(LOWER([Vehicle Make]), LOWER('triumph'))
THEN 'Triumph'

ELSEIF CONTAINS(lower([Vehicle Make]), LOWER('volvo'))
OR CONTAINS(lower([Vehicle Make]), LOWER('vovlvo'))
OR CONTAINS(lower([Vehicle Make]), LOWER('VOLVA'))

THEN 'Volvo'

ELSEIF CONTAINS(lower([Vehicle Make]), LOWER('volkswagen'))
OR CONTAINS(lower([Vehicle Make]), LOWER('volk'))
OR CONTAINS(lower([Vehicle Make]), LOWER('vols'))
OR CONTAINS(lower([Vehicle Make]), LOWER('polo'))
OR CONTAINS(lower([Vehicle Make]), LOWER('golf'))
OR CONTAINS(lower([Vehicle Model]), LOWER('golf'))
OR CONTAINS(lower([Vehicle Model]), LOWER('jetta'))
OR CONTAINS(lower([Vehicle Model]), LOWER('passat'))
OR CONTAINS(lower([Vehicle Model]), LOWER('touareg'))
OR CONTAINS(lower([Vehicle Model]), LOWER('TIGUAN'))
OR CONTAINS(lower([Vehicle Make]), LOWER('vw'))
OR CONTAINS(lower([Vehicle Model]), LOWER('vw'))

THEN 'VW'

ELSEIF CONTAINS(LOWER([Vehicle Make]), LOWER('yamaha'))
THEN 'Yamaha'

ELSEIF CONTAINS(lower([Vehicle Make]), LOWER('zx auto')) THEN 'ZX Auto'

ELSEIF CONTAINS(lower([Vehicle Model]), LOWER('pop'))
OR CONTAINS(lower([Vehicle Make]), LOWER('caravan'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('coromal'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('trailer'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('supreme'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('retreat'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('patriot'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('jayco'))
OR CONTAINS(lower([Vehicle Model]), LOWER('caravan'))
OR CONTAINS(lower([Vehicle Model]), LOWER('camper'))
OR CONTAINS(lower([Vehicle Model]), LOWER('atv'))
OR CONTAINS(lower([Vehicle Model]), LOWER('portland'))
OR CONTAINS(lower([Vehicle Make]), LOWER('apollo'))
OR CONTAINS(lower([Vehicle Make]), LOWER('OLYMPIC'))
OR CONTAINS(lower([Vehicle Make]), LOWER('NOVA'))
OR CONTAINS(lower([Vehicle Make]), LOWER('WINDSOR'))
OR CONTAINS(lower([Vehicle Make]), LOWER('EVERNEW'))

THEN 'RV'

ELSEIF CONTAINS(lower([Vehicle Make]), LOWER('limo'))
THEN 'Limo'

ELSEIF CONTAINS(lower([Vehicle Make]), LOWER('kenworth'))
OR CONTAINS(lower([Vehicle Make]), LOWER('dennis'))
OR CONTAINS(lower([Vehicle Make]), LOWER('linfox'))
OR CONTAINS(lower([Vehicle Make]), LOWER('barker'))
OR CONTAINS(lower([Vehicle Make]), LOWER('ivevo'))
OR CONTAINS(lower([Vehicle Make]), LOWER('iveco'))
OR CONTAINS(lower([Vehicle Make]), LOWER('iveko'))
OR CONTAINS(lower([Vehicle Make]), LOWER('scania'))
OR CONTAINS(lower([Vehicle Make]), LOWER('western star'))
OR CONTAINS(lower([Vehicle Make]), LOWER('daf truck'))
OR CONTAINS(lower([Vehicle Make]), LOWER('man'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('hino'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('hinno'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('tilta'))
OR CONTAINS(lower([Vehicle Make]), LOWER('vaw'))
OR CONTAINS(lower([Vehicle Make]), LOWER('manitou'))
OR CONTAINS(lower([Vehicle Model]), LOWER('truck'))
OR CONTAINS(lower([Vehicle Make]), LOWER('truck'))
OR CONTAINS(lower([Vehicle Make]), LOWER('Acco'))

THEN 'Commercial Truck'

ELSEIF CONTAINS(lower([Vehicle Make]), LOWER('bus'))
OR CONTAINS(lower([Vehicle Model]), LOWER('van'))
OR CONTAINS(lower([Vehicle Make]), LOWER('van'))
OR CONTAINS(lower([Vehicle Model]), LOWER('bus'))
OR CONTAINS(lower([Vehicle Make]), LOWER('taxi'))
THEN 'Other Commercial Van/Bus'

ELSEIF CONTAINS(lower([Vehicle Make]), LOWER('case'))
OR CONTAINS(lower([Vehicle Make]), LOWER('cat'))
OR [Vehicle Make] = 'UD'
OR CONTAINS(lower([Vehicle Make]), LOWER('grain'))
OR CONTAINS(lower([Vehicle Make]), LOWER('caterpillar'))
OR CONTAINS(lower([Vehicle Make]), LOWER('massey'))
OR CONTAINS(lower([Vehicle Make]), LOWER('john deere'))
OR CONTAINS(lower([Vehicle Model]), LOWER('tractor'))
OR CONTAINS(lower([Vehicle Model]), LOWER('diesel'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('kubota'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('landini'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('schmitz'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('shmitz'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('schwarze'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('schultze'))
OR CONTAINS(lower([Vehicle Make]), LOWER('miller'))
OR CONTAINS(lower([Vehicle Make]), LOWER('harvest'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('deutz'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('Tractor'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('Daedong'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('YTO'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('Samsung'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('Haines Hunter'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('Kuboto'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('Valtra'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('Spray'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('Polars'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('Maintou'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('Gleaner'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('JCB'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('AVAN'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('IRRIGATOR'))
OR CONTAINS(LOWER([Vehicle Model]), LOWER('IRRIGATOR'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('BETA'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('HAULMARK'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('ISEKI'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('BUELL'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('IRRIGATION'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('KRONE'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('NORTH STAR'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('CENTRE PIVOT'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('Goldacres'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('Waderain'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('Access'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('GMP'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('KIOTI'))
OR CONTAINS(LOWER([Vehicle Model]), LOWER('Digger'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('Tyco'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('TYM'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('HISUN'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('TOWPAX'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('HISUN'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('Wombat'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('Hardi'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('Claas Lexion'))
OR CONTAINS(LOWER([Vehicle Model]), LOWER('DEERE'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('MACDON'))
OR CONTAINS(LOWER([Vehicle Model]), LOWER('GRAND TIGER'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('GRAND TOURING'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('Freighter'))



THEN 'Commercial Other'

ELSEIF CONTAINS(lower([Vehicle Make]), LOWER('vespa'))
OR CONTAINS(lower([Vehicle Make]), LOWER('sym'))
OR CONTAINS(lower([Vehicle Make]), LOWER('adly'))
OR CONTAINS(lower([Vehicle Make]), LOWER('wolseley'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('azzuri'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('azzurri'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('vesper'))
OR CONTAINS(LOWER([Vehicle Model]), LOWER('scooter'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('piaggio'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('april'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('victory'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('m.v.'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('mv'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('erik buell racing'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('cfmoto'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('motor bike'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('hyosung'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('braap'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('motor cycle'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('fxsb'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('sucker'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('IRON HORSE'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('BIMOTA'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('HUSQVARNA'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('BIMOTA'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('BUELL'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('MORRIS'))
OR CONTAINS(LOWER([Vehicle Model]), LOWER('TRX 420'))
OR CONTAINS(LOWER([Vehicle Model]), LOWER('motor'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('ROADKING'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('BRP'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('KYMCO'))
OR CONTAINS(LOWER([Vehicle Model]), LOWER('GSF1200S'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('Homemade'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('Motorcycle'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('NBC'))



THEN 'Other Motorbike'

ELSEIF  CONTAINS(LOWER([Vehicle Make]), LOWER('austin healy'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('austin healey'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('morgan'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('lyland'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('leyland'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('valiant'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('elfin'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('jensen'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('De Tomaso'))


THEN 'Other Classic'

ELSEIF CONTAINS(lower([Vehicle Make]), LOWER('tvr'))
OR CONTAINS(lower([Vehicle Model]), LOWER('cobra'))
OR CONTAINS(lower([Vehicle Make]), LOWER('shelby'))
OR CONTAINS(lower([Vehicle Make]), LOWER('ultima'))
THEN 'Other High Performance'

ELSEIF CHARINDEX('car trailer',LOWER([Vehicle Model])) > 0
OR CONTAINS(LOWER([Vehicle Model]), LOWER('trek'))
OR CONTAINS(LOWER([Vehicle Model]), LOWER('road bike'))
OR CONTAINS(LOWER([Vehicle Model]), LOWER('6x4'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('trek'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('bicycle'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('willier'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('canyon'))
OR CONTAINS(LOWER([Vehicle Model]), LOWER('15x6.6'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('Pinarello'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('MACLEA'))
OR CONTAINS(LOWER([Vehicle Make]), LOWER('KHS'))


THEN 'Car Trailer or Push Bike'

ELSEIF ISNULL([Vehicle Make]) 
OR CONTAINS(lower([Vehicle Make]), LOWER('tba'))
OR CONTAINS(lower([Vehicle Make]), LOWER('unknown'))
OR CONTAINS(lower([Vehicle Make]), LOWER('DATASIGNS'))
OR CONTAINS(lower([Vehicle Make]), LOWER('Blue car'))
OR CONTAINS(lower([Vehicle Make]), LOWER('tset4'))
OR CONTAINS(lower([Vehicle Make]), LOWER('test'))
OR CONTAINS(lower([Vehicle Make]), LOWER('MULTIPLE'))
OR CONTAINS(lower([Vehicle Make]), LOWER('SUV'))
OR CONTAINS(lower([Vehicle Make]), LOWER('Small SUV'))
OR CONTAINS(lower([Vehicle Make]), LOWER('CUSTOM BUILT'))

THEN 'No Brand Provided'

ELSE '***Error***'

END
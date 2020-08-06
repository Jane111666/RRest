function make_rest_vs_walk_ppg_plot
% make_respiratory_modulations_plot creates the plot of respiratory
% modulations of the ECG and PPG signals which is publicly available at: 
%
%               make_respiratory_modulations_plot
%
%	This file creates an image adapted from:
%           Pimentel M.A.F. et al. Probabilistic estimation of respiratory
%           rate from wearable sensors. In Wearable Electronics Sensors;
%           Mukhopadhyay, S. C., Ed.; Springer International Publishing,
%           2015; Vol. 15, pp. 241–62
%           DOI: https://doi.org/10.1007/978-3-319-18191-2_10
%   Please cite this publication when using this image.
%   
%   Output:
%       an EPS image in the same folder as this script
%     
%   Comments, Questions, Criticisms, Feedback, Contributions:
%       See: http://peterhcharlton.github.io/RRest/contributions.html
%
%   Licence:
%       please see the accompanying file named "LICENSE"
%

% setup path to save figure to (the same folder as this script)
script_folder = fileparts(mfilename('fullpath'));
savepath = [script_folder, filesep, 'rest_vs_walk_ppg_plot'];

% load data
data = load_data;

% make plot
make_plot(data, savepath);

end

function data = load_data

% Taken from Vortal dataset (young, healthy volunteer):
% High fidelity laboratory equipment signals at finger, after low- and
% high-pass filtering, and downsampling.

% - walk
data.w.v = [0.000506058354323929;0.00161529448297422;0.00213047937327039;0.00316420625249822;0.00494228882666167;0.00583708523329640;0.00554831602311377;0.00590086734513057;0.00823068924660499;0.0120023218833786;0.0149665351391091;0.0148687320989189;0.0122752381640801;0.00966328888621459;0.00782651189594204;0.00604243148578295;0.00390272381872796;0.000695933439899306;-0.00403807301456738;-0.00867527449950176;-0.0113917945212563;-0.0127632394775290;-0.0141330208669798;-0.0156764970221039;-0.0169337743765766;-0.0170002598827812;-0.0144812070504446;-0.00859740094090356;-0.000931211117550776;0.00411395648479575;0.00357471733451566;0.000510010746605531;-5.57243192650112e-05;0.00231036995675369;0.00488956459496682;0.00589187870194874;0.00498659870955927;0.00324310529898443;0.00243788290476493;0.00296400217277617;0.00398954904373627;0.00543413568117753;0.00771383732154740;0.0101511643270140;0.0115305229797367;0.0116349698558318;0.0107767171122213;0.00909342128799116;0.00736401412155801;0.00655212523072437;0.00648575654100314;0.00666234951723900;0.00698462638149835;0.00730189176776512;0.00791278286336188;0.00921342251457592;0.0104410191046688;0.0108625051178265;0.0109160658613608;0.0110391925718047;0.0112084451718579;0.0111723435390526;0.0105289729339653;0.00953951354912764;0.00870842744876960;0.00783816970553204;0.00711887042789076;0.00709535369327548;0.00732362305731081;0.00753245634094789;0.00827819865807611;0.00928718322327836;0.00966360650669075;0.00910830166722095;0.00782155707721858;0.00662441110876576;0.00651899670754636;0.00753518820919659;0.00907917406997504;0.0107206295416490;0.0122883423916576;0.0138328158610359;0.0152019600020882;0.0161093044959064;0.0165928986148027;0.0166150375967529;0.0161571534600375;0.0157212375702324;0.0156682717292173;0.0157706072855818;0.0154330511187195;0.0139829537048897;0.0118327563608309;0.0104366627161067;0.0100033447042820;0.00966659505245704;0.00952280387130097;0.00942346561516060;0.00885376383305866;0.00926435366112741;0.0105895301058328;0.00950488733826612;0.00767911627018344;0.0105609916239355;0.0148871104346420;0.0132507930289269;0.00762630134334261;0.00350344802507346;0.000135613069887180;-0.00367687740844904;-0.00537010228348675;-0.00405552562062289;-0.00191281188615562;-0.000491244857652040;0.000193918724212553;0.000557868243295258;0.00106543167586714;0.00193884683440056;0.00272496556050027;0.00270645856257892;0.00190293465478129;0.000846444589861044;-0.000352478386337312;-0.00182717619453228;-0.00341944196005126;-0.00453607414145145;-0.00487006311387321;-0.00559256139757890;-0.00765693918581491;-0.00966335633809805;-0.0105318584731359;-0.0112478732926117;-0.0122237646703106;-0.0130585622268708;-0.0137257061682829;-0.0134793820400081;-0.0116144716438703;-0.00893776201733883;-0.00626138598838846;-0.00353313884242132;-0.000672535827335244;0.00218250750927664;0.00437759733949265;0.00504251554556042;0.00419757388936239;0.00230484651550821;-0.000424098293039264;-0.00323792337848384;-0.00520245334579614;-0.00631721383080433;-0.00663845484658921;-0.00603122268026621;-0.00558618261479791;-0.00663031498702116;-0.00870877446861668;-0.0104437459670304;-0.0111585375672816;-0.0111210964249690;-0.0109506261251641;-0.0106858785711163;-0.00997619085982232;-0.00909054417210620;-0.00859046159361582;-0.00820439986557754;-0.00700139375775803;-0.00508105897410848;-0.00365113404281568;-0.00244548218154971;-0.000106981568751379;0.00245550707404744;0.00331198357272554;0.00274358129851710;0.00182916142703161;0.000743516078985420;-0.000341049017220386;-0.00126810984821556;-0.00199736923657314;-0.00202283102096324;-0.00104816094891423;0.000580270068323577;0.00222933937896991;0.00307473759759717;0.00311648360625548;0.00319165454119692;0.00300871650400742;0.00190735385540289;0.000721095986887957;-2.20736140515693e-05;-0.00105834872136071;-0.00239604843563936;-0.00334376720404669;-0.00365049411866615;-0.00314156926188783;-0.00171823519336962;0.000604971302962922;0.00390360246616546;0.00735171156791396;0.00936356004161968;0.00944836376350056;0.00832893448051722;0.00697173682573766;0.00630086410216756;0.00657751189927586;0.00739932691175579;0.00878860988625392;0.0114341368573324;0.0156040300851740;0.0195584958547501;0.0205108463794552;0.0185419468320248;0.0165355771521741;0.0161934364826907;0.0177469958091057;0.0209799579426799;0.0240296884608893;0.0248311390814073;0.0239146100566468;0.0228503709844723;0.0213472728054594;0.0183145174782072;0.0142452833712256;0.0103322187035909;0.00741759769474174;0.00685090004859667;0.00872876214232736;0.0108768619406747;0.0124217189187880;0.0135985293462474;0.0130631456047110;0.0110495657344502;0.0103471652699569;0.0116367419275375;0.0134286461496446;0.0146399784340736;0.0142110626167984;0.0123593461110673;0.0116050662196780;0.0129515892729154;0.0142343897166229;0.0141447237841666;0.0137852693332579;0.0138916461341340;0.0137990306059552;0.0129945636691295;0.0127923839429325;0.0149275607576020;0.0173379186422846;0.0168629584841430;0.0159555588949147;0.0175926751704050;0.0186233116639308;0.0168676080478324;0.0150097653629509;0.0139268705624861;0.0127575738879334;0.0126708900478765;0.0134036128778766;0.0125679686057724;0.0100538052445581;0.00697961153074067;0.00348666619131085;0.000738071711403994;-9.20411696092837e-05;-0.000195494504504863;-0.000714161622697111;-0.00127604455833445;-0.00176523192443830;-0.00237488241033315;-0.00317761024217726;-0.00420009576667930;-0.00471753853441457;-0.00431535397511635;-0.00364918715487544;-0.00252259126984301;-0.000606997876488981;0.000904601540483053;0.00112562448861730;-2.21636296087423e-05;-0.00193027529666147;-0.00322985846505354;-0.00462209502498654;-0.00582010898124954;-0.00231351398117479;0.00429611997750754;0.00562387085244457;0.00173913917841466;-0.00135767571796009;-0.00334142145373289;-0.00496479628301220;-0.00488638205607488;-0.00393680560328546;-0.00328516145887645;-0.00271255458807901;-0.00203332573063305;-0.00106173827921923;-0.000177784475115855;0.000786805354384853;0.00352944692939116;0.00760238157977920;0.0100358901811977;0.00959511721646335;0.00666860751664710;0.00124463219397305;-0.00596649833291408;-0.0130720435989860;-0.0188702959953652;-0.0240152058808641;-0.0294352185184915;-0.0342022818729730;-0.0371100144302928;-0.0390530412488778;-0.0410501487930351;-0.0424637876273756;-0.0429953302384097;-0.0431657368683725;-0.0426852178816913;-0.0412362841345247;-0.0394378997968077;-0.0371860776020231;-0.0338507757794762;-0.0305853845911470;-0.0286355949778301;-0.0268955977577855;-0.0246669957895326;-0.0230565358767788;-0.0220849445831249;-0.0208628399424642;-0.0196125828628180;-0.0190147672354148;-0.0195495527690971;-0.0208720972955822;-0.0213877796181110;-0.0204992491637615;-0.0191419489471728;-0.0175857358926762;-0.0161307100941532;-0.0157093667822760;-0.0158327347699075;-0.0157175813274562;-0.0160623357660250;-0.0167674475114939;-0.0169283939726446;-0.0172844135103885;-0.0184406210801096;-0.0193548022663786;-0.0197040559444698;-0.0198940241471892;-0.0195975578122994;-0.0189783303261767;-0.0184969230740072;-0.0175823909203127;-0.0161307271594120;-0.0143793070045321;-0.0109651364421672;-0.00557097150214727;-0.00138985237006890;-0.00148372002294920;-0.00569830137869143;-0.0116507916143999;-0.0160778026501699;-0.0167426453738446;-0.0144215121585504;-0.0117924154055476;-0.0107162779439286;-0.0110417194146903;-0.0114706797299654;-0.0115957612322581;-0.0122806074543650;-0.0137730428701817;-0.0153686155188978;-0.0167662287149062;-0.0180604378295634;-0.0193263458410107;-0.0204257385501092;-0.0204255478955832;-0.0188684511769953;-0.0171301440191422;-0.0162285134806596;-0.0155735698987912;-0.0152958894468242;-0.0163726940382314;-0.0181941557363234;-0.0193658720112868;-0.0202450514098094;-0.0218613404272557;-0.0239388149810179;-0.0260577521471981;-0.0282392495063308;-0.0299324945291680;-0.0310449159944328;-0.0321992208061346;-0.0329209489909653;-0.0325901279078622;-0.0318735265789631;-0.0312057319746246;-0.0304517309397834;-0.0298449502474147;-0.0294096616492536;-0.0288121852105248;-0.0278992383165906;-0.0268454389565633;-0.0261936117987874;-0.0259250035431896;-0.0254125080673237;-0.0249744766119966;-0.0250481462905238;-0.0251045335048347;-0.0252523640973917;-0.0257532116189245;-0.0256751178234013;-0.0249663777105136;-0.0247107058141543;-0.0245668845600993;-0.0237040207147384;-0.0228821575757143;-0.0225588823052259;-0.0213581396677338;-0.0188924176202741;-0.0170962616602304;-0.0168352633276007;-0.0170066745728029;-0.0171219427757603;-0.0167117044556151;-0.0147423022055441;-0.0119430903298123;-0.00961086036105173;-0.00684511729229691;-0.00217707713559027;0.00402831826189325;0.00915511532319013;0.00982037550629707;0.00541780331349927;-0.00136140531488695;-0.00782478156051871;-0.0121830392169294;-0.0132160372125865;-0.0117252192268486;-0.0100432002703825;-0.00934473810770213;-0.00897863963084253;-0.00815233518495180;-0.00706797519872397;-0.00602371169656105;-0.00452493118307274;-0.00187474223762986;0.00234900693074072;0.00754875298589745;0.0113312109651945;0.0118173451136152;0.0100484301885674;0.00787391460107474;0.00558456154101290;0.00302384875162981;0.000882213585809217;-3.07970579625493e-06;0.000217429373607635;0.000799787773431284;0.00156311149093737;0.00247784639583073;0.00318601229149041;0.00392371326997800;0.00505377330061232;0.00574894397423567;0.00514491156385361;0.00389222225599629;0.00312712059518538;0.00300145897891204;0.00312605670746306;0.00344132157278546;0.00401327037710586;0.00486758694228030;0.00598424886988597;0.00680565033928077;0.00697173094411469;0.00757225866469359;0.00971108920630688;0.0127490390875935;0.0152732524378172;0.0160269086296466;0.0143186963089959;0.0113514202917930;0.00945342140060293;0.00967911836254554;0.0116844036986559;0.0142023743611773;0.0155058185412677;0.0152042894597201;0.0139629585061025;0.0121851603906446;0.0109420203881474;0.0110435221875296;0.0115366641958003;0.0118432874871212;0.0120636807895707;0.0116938432628243;0.0113322626213908;0.0118000435612881;0.0118118759256376;0.0106199613981954;0.00907856135616736];
data.w.fs = 50;

% -rest
data.r.v = [0.0113915953383981;0.0130974755056656;0.0128075629279833;0.0128530996299814;0.0149588012191098;0.0172837372212697;0.0180899592077298;0.0170843396236622;0.0136380924978752;0.00770909996728860;0.00187770004905824;-0.00108235479468261;-0.00143752997626422;-0.000429542468355411;0.00144369016994666;0.00283590544831136;0.00263513717012934;0.00112090436163748;-0.00167717528797042;-0.00535753463869952;-0.00880646584497263;-0.0123890414184651;-0.0167315232906365;-0.0208770704553771;-0.0244707025368079;-0.0280401647556963;-0.0309756907754969;-0.0329507963825470;-0.0351139849760639;-0.0376506151000191;-0.0395985290106588;-0.0413018558042069;-0.0434696546820306;-0.0454874269128991;-0.0473093701028644;-0.0498546414004533;-0.0526716574849196;-0.0548801641033761;-0.0571361482318067;-0.0597934226235504;-0.0621407311603683;-0.0643233091659467;-0.0667120551098626;-0.0691364547506751;-0.0720560167503956;-0.0752361474691645;-0.0777981874270573;-0.0802670701999134;-0.0794416541694955;-0.0663187144029708;-0.0386376261065176;-0.00681207141970895;0.0180881581915325;0.0328358731499659;0.0391165368274240;0.0401960122223847;0.0393695404640277;0.0385694144897175;0.0383730366128841;0.0387668370268174;0.0393297717265443;0.0387461042694532;0.0355245947522906;0.0299633152426588;0.0241647928593724;0.0203698212393154;0.0195850539560267;0.0207701577618668;0.0221797502543198;0.0232100309765401;0.0233912181317530;0.0219441494383649;0.0192327220162920;0.0159233208359788;0.0119735454039438;0.00775039285737472;0.00353290297955822;-0.00111563852605610;-0.00582231041592339;-0.00975562130464410;-0.0130717721590927;-0.0161316872976078;-0.0189523266974288;-0.0215893886569139;-0.0239953867092434;-0.0262219145655881;-0.0284963903176774;-0.0308787548666264;-0.0334303215011394;-0.0361549135705957;-0.0388496978990043;-0.0415373660040095;-0.0444426774572379;-0.0474618872526437;-0.0502162247642839;-0.0527052902967358;-0.0553378738479725;-0.0581810101799831;-0.0611387772927379;-0.0642787782269532;-0.0672323778230204;-0.0700900878064169;-0.0728545433628565;-0.0703439083170137;-0.0539976470217419;-0.0244465226794883;0.00587847159941976;0.0267789042647169;0.0380132496320695;0.0426249303982553;0.0425172245420955;0.0403218895812058;0.0385806065878817;0.0378057019434639;0.0377030549561376;0.0378111155323812;0.0365232202237364;0.0324430778028539;0.0267494016425711;0.0219653569419748;0.0192737295376771;0.0187380079966974;0.0200048241038601;0.0217164919145640;0.0224756637694275;0.0219173523676135;0.0199213111894962;0.0167206508881714;0.0131492301128553;0.00931566373297196;0.00485517964447417;0.000239957846392850;-0.00412361818724806;-0.00848154166175724;-0.0125347254188075;-0.0158928744662618;-0.0191215425936767;-0.0223641325268353;-0.0249236525162508;-0.0271095034925791;-0.0297308730753064;-0.0324577997336412;-0.0349984152841715;-0.0377513170431899;-0.0404723012499732;-0.0428208810474502;-0.0453224382944680;-0.0482118403120377;-0.0511871584172319;-0.0542504812049971;-0.0573188052939709;-0.0601659173853060;-0.0628501281464061;-0.0655010918329732;-0.0684240632118539;-0.0715092249542203;-0.0742264805978039;-0.0771901551041721;-0.0783082097456867;-0.0688700152752746;-0.0439926606577997;-0.0125477834366204;0.0129510444556952;0.0283674413214263;0.0352864261554264;0.0362216548798310;0.0341861968195597;0.0314925745423810;0.0292379994549319;0.0280985112106620;0.0278236119786208;0.0269851713856103;0.0243471650138737;0.0201558823213322;0.0160143626865177;0.0135221066971352;0.0131233707980581;0.0142874180898667;0.0162028063317541;0.0178774086732571;0.0182719910583121;0.0170116986826239;0.0144624028495054;0.0110701693427544;0.00724857601088825;0.00328447655512175;-0.000977141630920583;-0.00553833943211486;-0.00989560845442422;-0.0138631860664901;-0.0176362340791094;-0.0210750839382230;-0.0239808794535705;-0.0265633958621763;-0.0290582625822888;-0.0315201885508438;-0.0340731488055955;-0.0367670594268836;-0.0393842216399529;-0.0418404398919103;-0.0444077402443277;-0.0472535802998269;-0.0501593237157495;-0.0528344312217996;-0.0552543360024898;-0.0577400954369529;-0.0607473492319677;-0.0641122099826424;-0.0671636270840941;-0.0703752292248535;-0.0731295271949129;-0.0684151299847960;-0.0484754300894253;-0.0177086969527568;0.0106228428918240;0.0292278551198718;0.0389292135895249;0.0419213846861060;0.0405030173025768;0.0375339885590661;0.0349565809115984;0.0336143117509994;0.0334562714807449;0.0331439162612870;0.0310142365813283;0.0268189637994301;0.0217915622159195;0.0175808069363233;0.0155815620503242;0.0159824639906634;0.0175565198364432;0.0190712639764876;0.0195877873541485;0.0183488169935299;0.0157789680746099;0.0125979393314337;0.00866735549546906;0.00423627356230863;-0.000191034216722946;-0.00483678061786322;-0.00962211070931571;-0.0141389044242982;-0.0184334261462848;-0.0223223584680338;-0.0255508523824179;-0.0284577192517289;-0.0312427252932644;-0.0337781677766535;-0.0361870075712645;-0.0386755965977043;-0.0413651047733278;-0.0443095256540675;-0.0472842224579542;-0.0500358800615647;-0.0525843004333933;-0.0550993802977058;-0.0580127359902196;-0.0614525996414018;-0.0646802821402467;-0.0678913710762843;-0.0714100094345793;-0.0701138290960154;-0.0559172346148907;-0.0295499397626281;-0.00164853927143764;0.0187402117380085;0.0295067963836815;0.0323319783858202;0.0302047289591990;0.0259956969020071;0.0216549462222120;0.0186528803940528;0.0171695828250573;0.0155374250125753;0.0123246131452692;0.00780775463144941;0.00323372018300827;0.000110672994152087;-0.000460796082096721;0.00113563450963968;0.00335390970113554;0.00498132527394932;0.00545001657645368;0.00437167764973882;0.00170959038222963;-0.00209098560758327;-0.00632548330308557;-0.0104500944909635;-0.0145984012002510;-0.0190641129897120;-0.0235053995680974;-0.0274921659874991;-0.0309575259665292;-0.0338894719521197;-0.0363781530237556;-0.0384568776042472;-0.0400162856029732;-0.0414562148006672;-0.0433255262982840;-0.0453064004730548;-0.0470935972997991;-0.0494459282940255;-0.0525014709312196;-0.0549323245772447;-0.0568330247411487;-0.0589789457261036;-0.0566304876036794;-0.0419210517419645;-0.0156560309158504;0.0114955590989941;0.0305730838669810;0.0401594802114937;0.0426661092160050;0.0409687366288265;0.0378411408138037;0.0353403223793327;0.0341663403422845;0.0339828819489893;0.0337474188774854;0.0317648164130228;0.0272193742801088;0.0218365053115971;0.0182744827077874;0.0173938878363140;0.0184850315446242;0.0206392233741492;0.0225751772611869;0.0229958262220227;0.0218279066607685;0.0195364971243891;0.0161662463718164;0.0121121000775768;0.00789449041828401;0.00342650960684480;-0.00114708332825513;-0.00540343606895494;-0.00924818205973712;-0.0124689754857586;-0.0150976721353009;-0.0176005933292292;-0.0197921434236251;-0.0215441105013596;-0.0234515360864091;-0.0253852011089458;-0.0272411482060722;-0.0297728447428611;-0.0324780768096206;-0.0346813857372668;-0.0360789717251252;-0.0312931315710448;-0.0130805801724360;0.0152826787840667;0.0418019121353806;0.0590348798963113;0.0672370416699242;0.0694211282786498;0.0687596379321399;0.0676665779466403;0.0675067127833830;0.0686792942893593;0.0703019498251080;0.0706795374276979;0.0683465611811769;0.0629827468360441;0.0560592960686891;0.0500477840874911;0.0467167563614417;0.0462133103640371;0.0473429497904703;0.0487467258839699;0.0494823478669026;0.0487307920103704;0.0462837945429902;0.0427407202641788;0.0385165305969902;0.0337925447346537;0.0289444106438426;0.0240970974432600;0.0192407335009288;0.0147289473258989;0.0109752048597928;0.00804879726845173;0.00558282014038457;0.00308197148803441;0.000493053719500772;-0.00192575619728041;-0.00419737479433900;-0.00663036869859201;-0.00933081026168631;-0.0120827973924393;-0.0147596909312708;-0.0173666607032490;-0.0199566424210614;-0.0229097042945798;-0.0262810699556448;-0.0293212520623338;-0.0319445475237818;-0.0349251193556361;-0.0380716903827450;-0.0407204758234569;-0.0433479611659138;-0.0464878696541842;-0.0495707850990485;-0.0520942244097728;-0.0543880256876595;-0.0568467366752800;-0.0595266057118055;-0.0623377797288698;-0.0650490578931681;-0.0675311172786509;-0.0699209121003853;-0.0722015545530940;-0.0744363707900379;-0.0770005740660179;-0.0797194375204030;-0.0826338079017909;-0.0857848018687727;-0.0833477291825927;-0.0644268008843364;-0.0280822426705941;0.0113272224435422;0.0402371191193694;0.0565024867376954;0.0631183399147454;0.0635759609441980;0.0621506162083959;0.0613382499067098;0.0613492164973086;0.0624931693886168;0.0643972694150865;0.0650019897360367;0.0626144155601167;0.0575307896354187;0.0517476890652748;0.0475924097920973;0.0461258921784531;0.0468507436568509;0.0484098816122782;0.0494580956908247;0.0494653370605846;0.0482882684715416;0.0456414106827706;0.0417732115385466;0.0372986822036639;0.0326094130340448;0.0280971007276894;0.0236577901351880;0.0189820489194852;0.0146948855082947;0.0111397775279057;0.00788360463570076;0.00520569614154623;0.00315053575317778;0.000973845568761545;-0.00115942712509680;-0.00294298258599267;-0.00498513851458897;-0.00768548330702117;-0.0109112827470716;-0.0140135965183463;-0.0166175129971588;-0.0183618715898735;-0.0141470290855392;0.00335795465834884;0.0313225782156770;0.0575266388025066;0.0744203523719118;0.0823427730505362;0.0839302842986501;0.0825184087118470;0.0808976159289627;0.0799506654086574;0.0798502858208405;0.0801200756654350;0.0792811363752263;0.0760437745447025;0.0701418183025078;0.0629067790856115;0.0568643527283454;0.0537440033202738;0.0535451941516209;0.0549051080158526;0.0559887383041306;0.0559165914035716;0.0546398587990511;0.0519333912019752;0.0479603392132179;0.0433978838147861;0.0384116215403192;0.0330152773853365;0.0277762196659265;0.0230538818386132;0.0185896253341898;0.0143365101847288;0.0107335743930056;0.00785262722180163;0.00510252811548846;0.00224639681442356;-0.000308734912171913;-0.00268870225389006];
data.r.fs = 50;

end

function make_plot(data, savepath)

% setup
close all
lwidth = 2;
ftsize = 18;

% make figure
figure('Position', [20,20,800,400])

% add plot during walking
subplot(2,1,1)
plot([0:length(data.r.v)-1]/data.r.fs, data.r.v, 'LineWidth', lwidth)
curr_range = range(data.r.v);
ylim([min(data.r.v)-0.1*curr_range, max(data.r.v)+0.1*curr_range])
ylab = ylabel({'PPG','at rest', '[au]'}, 'FontSize', ftsize, 'Rotation', 0);
set(ylab, 'Units', 'normalized', 'Position', [-0.07, 0.3])
set(gca, 'YTick', [], 'XTick', 0:2:10, 'FontSize', ftsize)
box off

% add plot during exercise
subplot(2,1,2)
plot([0:length(data.w.v)-1]/data.w.fs, data.w.v, 'LineWidth', lwidth)
curr_range = range(data.w.v);
ylim([min(data.w.v)-0.1*curr_range, max(data.w.v)+0.1*curr_range])
xlabel('Time [s]', 'FontSize', ftsize)
ylab = ylabel({'PPG','walking', '[au]'}, 'FontSize', ftsize, 'Rotation', 0);
set(ylab, 'Units', 'normalized', 'Position', [-0.07, 0.3])
set(gca, 'YTick', [], 'XTick', 0:2:10, 'FontSize', ftsize)
box off

% save figure
set(gcf,'color','w');
%print(savepath, '-depsc')
print(savepath, '-dpng')

end
# 1 files combined:
# 	/home/eeb177-student/Desktop/eeb-177/lab-work/exercise-9/longer-pyrate-run/pyrate_mcmc_logs/canid_occ_1_marginal_rates.log

# 95% HPDs calculated using code from Biopy (https://www.cs.auckland.ac.nz/~yhel002/biopy/)

pdf(file='/home/eeb177-student/Desktop/eeb-177/lab-work/exercise-9/longer-pyrate-run/pyrate_mcmc_logs/canid_occ_1_marginal_rates_RTT.pdf',width=0.6*9, height=16.8)
par(mfrow=c(4,1))
library(scales)
L_hpd_m95=c(0.128620213151, 0.128620213151,0.128620213151,0.128620213151,0.124372000395,0.0509859145375,0.0432416760333,0.0454813559169,0.0454813559169,0.0462654098125,0.044437526045,0.04672474632,0.0481497829051,0.0481497829051,0.0481497829051,0.0481497829051,0.0482162078855,0.052282317888,0.0567352949582,0.0684405817272,0.0789395040549,0.0794066140755,0.0945958036799,0.100040084356,0.102246261051,0.102246261051,0.102246261051,0.0990402588215,0.101757142202,0.102246261051,0.0969748930334,0.106895302907,0.131252934592,0.131628491603,0.132053621255,0.131252934592,0.131252934592,0.125498167898,0.122312219081,0.121433877677,0.122312219081,0.120123658143,0.126554404016,0.123238647004,0.110434875373,0.110434875373,0.106895302907,0.111086170727,0.107092960797,0.111086170727,0.104238942757,0.104238942757,0.101979799311,0.103506894627,0.103506894627)
L_hpd_M95=c(0.350357040985, 0.350357040985,0.350357040985,0.350607851265,0.351981742439,0.323000787591,0.166355061049,0.150554326864,0.149761317719,0.149761317719,0.14701947947,0.149761317719,0.15114741308,0.15043508752,0.15043508752,0.152667632694,0.16268854131,0.176116223479,0.189213367056,0.207853318269,0.215194632528,0.215349521551,0.223079634529,0.22541144664,0.226747608181,0.227924064327,0.227818444933,0.227949024302,0.233567205009,0.23750898285,0.284204061719,0.359668841952,0.395464029843,0.395464029843,0.398287371434,0.398691997874,0.398287371434,0.395464029843,0.393296147491,0.395464029843,0.39954638487,0.400040160026,0.414163277275,0.413846638404,0.405024621499,0.407845497827,0.407318964771,0.420437814324,0.420437814324,0.426123647594,0.420437814324,0.420437814324,0.420437814324,0.42345001697,0.42345001697)
M_hpd_m95=c(0.881141579009, 0.881141579009,0.0878043433634,0.0878043433634,0.0860006353125,0.0860006353125,0.0865040840711,0.0865040840711,0.0865040840711,0.0871445222972,0.0876466721557,0.0878681125041,0.0867178126426,0.0867178126426,0.087378991255,0.0883200905885,0.087339589659,0.087378991255,0.0873618432394,0.0873618432394,0.0870202254378,0.0870202254378,0.0834893115176,0.0808645498964,0.0801301997657,0.0806818744438,0.080167825729,0.0801301997657,0.0781031324569,0.0750166107689,0.0721874764758,0.0715882851839,0.0699617857074,0.0630814505356,0.0452912609247,0.031542953784,0.0295801592522,0.0253551014133,0.0253551014133,0.0253551014133,0.025855603335,0.0249738984955,0.0241989558211,0.0232542675888,0.0229222213238,0.0229222213238,0.022135336405,0.022135336405,0.0211578405017,0.0190773840213,0.0190773840213,0.0190773840213,0.0190773840213,0.0190773840213,0.0190773840213)
M_hpd_M95=c(1.52420645022, 1.52420645022,0.140372351326,0.140372351326,0.137886859492,0.137886859492,0.137886859492,0.137811713137,0.137578792257,0.136095655352,0.135050001318,0.135050001318,0.133750040894,0.132966752706,0.131146909756,0.131072457305,0.128987059549,0.12893995861,0.12893995861,0.12893995861,0.129088722335,0.130178011429,0.130178011429,0.128987059549,0.128987059549,0.130341671324,0.130876774243,0.131146909756,0.131068233554,0.130567518196,0.130178011429,0.130567518196,0.133020391752,0.130567518196,0.130567518196,0.130567518196,0.130567518196,0.130567518196,0.130567518196,0.130567518196,0.130967553746,0.130567518196,0.130567518196,0.130567518196,0.130567518196,0.130967553746,0.130967553746,0.131136730914,0.132302715014,0.130967553746,0.130967553746,0.130967553746,0.130967553746,0.130967553746,0.130967553746)
R_hpd_m95=c(-1.27083389145, -1.27083389145,0.0158231592696,0.0158231592696,0.01431328131,-0.0705455050566,-0.0919988476929,-0.0796893340915,-0.0775499999701,-0.0769662578717,-0.073603114887,-0.073603114887,-0.073603114887,-0.0720832779612,-0.0700436679671,-0.0689218617273,-0.0671188332741,-0.0638583523983,-0.0592551130222,-0.0414194100254,-0.0358202223081,-0.0217897916863,-0.0153545144796,-0.00734481725988,-0.00608206302317,-0.00734481725988,-0.00734481725988,-0.00537868089527,-0.00684953857112,-0.00684953857112,-0.0136583295479,-0.00389868969262,0.024967932377,0.0321098234837,0.0267612426915,0.0347400187576,0.0328839721561,0.0328839721561,0.0315539588867,0.0324922028951,0.0288096170362,0.027635970757,0.0214418107037,0.0146216697733,0.00647413848161,0.00439040146712,-0.000982070651563,0.00439040146712,-0.00522808389374,-0.00971288534367,-0.00971288534367,-0.0157098605586,-0.013019770043,-0.00971288534367,-0.00971288534367)
R_hpd_M95=c(-0.589624731936, -0.589624731936,0.241233548427,0.241446761154,0.245614466087,0.216630670238,0.0616926837828,0.0449749025201,0.0462306980247,0.0445292124941,0.0459658467556,0.0462306980247,0.0462306980247,0.0459658467556,0.0449749025201,0.0488260488169,0.0595383108888,0.0716321372321,0.0855538286883,0.105941763445,0.111084626356,0.120726572601,0.121226664778,0.126557680431,0.127381114838,0.127381114838,0.128567377005,0.134763776623,0.137608094164,0.141956868507,0.186091453219,0.260271408569,0.302335307834,0.305523832406,0.307471912647,0.317080639734,0.316918318273,0.31750025405,0.31750025405,0.320537380356,0.320537380356,0.320214162207,0.323830636353,0.321063856142,0.321063856142,0.322301401398,0.321063856142,0.337815070557,0.337815070557,0.335009308705,0.334806952133,0.327615877503,0.330433937185,0.335009308705,0.335009308705)
L_mean=c(0.267183771211, 0.267183771211,0.267183771211,0.267181912244,0.265654768022,0.176352059654,0.0930285499346,0.0878518175471,0.0877921819048,0.0877759120944,0.0876488261989,0.0879311243061,0.087782698554,0.0878173025131,0.0878341397676,0.0893172132575,0.0956037274805,0.103660196474,0.118226817511,0.142244330787,0.151699911664,0.158312994118,0.162500222155,0.165130993027,0.166755858442,0.167530233971,0.168060139286,0.169169413086,0.169782290755,0.171115164858,0.182791116899,0.218018615048,0.244982802637,0.249960303576,0.252136511758,0.253042107162,0.252910829975,0.252429214801,0.251885357579,0.250809658845,0.251099382233,0.251625433408,0.253105153943,0.25306817489,0.252116570256,0.251815000413,0.251277273694,0.247826245751,0.246973378854,0.24640920477,0.245638702025,0.244768544164,0.244522895564,0.244426937865,0.244403193013)
M_mean=c(1.19614682228, 1.19614682228,0.111597503787,0.111561789635,0.111537968912,0.111530752127,0.111441929536,0.111395928531,0.111276135666,0.110895907807,0.110460339157,0.110344819656,0.110213065592,0.109952864951,0.109033427334,0.108234862757,0.107737822888,0.107578541556,0.107458372698,0.107459063073,0.107540737245,0.107243095808,0.106158895475,0.105502172702,0.105299171203,0.105179664768,0.10505716506,0.104928074213,0.104378210481,0.103730942993,0.103245371351,0.103117036816,0.102845008397,0.102130832717,0.0991545280817,0.0964300683793,0.0954694048104,0.0954580015005,0.0952826616201,0.0952909249943,0.0952701364935,0.0954475741945,0.095811467055,0.0964639272728,0.096479764042,0.0965352617234,0.0967365096549,0.0967078796673,0.0965225759247,0.0963710083659,0.0963710083659,0.0963710083659,0.0963710083659,0.0963710083659,0.0963710083659)
R_mean=c(-0.928963051073, -0.928963051073,0.155586267425,0.155620122609,0.15411679911,0.0648213075268,-0.0184133796014,-0.0235441109838,-0.0234839537616,-0.0231199957121,-0.022811512958,-0.0224136953498,-0.0224303670378,-0.0221355624378,-0.0211992875666,-0.0189176494998,-0.0121340954078,-0.00391834508205,0.0107684448131,0.0347852677139,0.0441591744195,0.0510698983096,0.0563413266805,0.0596288203253,0.0614566872384,0.0623505692026,0.0630029742257,0.064241338873,0.0654040802741,0.0673842218656,0.0795457455478,0.114901578231,0.14213779424,0.147829470859,0.152981983677,0.156612038783,0.157441425164,0.156971213301,0.156602695959,0.155518733851,0.15582924574,0.156177859214,0.157293686888,0.156604247618,0.155636806214,0.155279738689,0.154540764039,0.151118366083,0.150450802929,0.150038196404,0.149267693659,0.148397535798,0.148151887198,0.148055929499,0.148032184647)
trans=0.5
age=(0:(55-1))* -1
plot(age,age,type = 'n', ylim = c(0, 0.468736012353), xlim = c(-57.75,2.75), ylab = 'Speciation rate', xlab = 'Ma',main='canid' )
polygon(c(age, rev(age)), c(L_hpd_M95, rev(L_hpd_m95)), col = alpha("#4c4cec",trans), border = NA)
lines(rev(age), rev(L_mean), col = "#4c4cec", lwd=3)
plot(age,age,type = 'n', ylim = c(0, 1.67662709524), xlim = c(-57.75,2.75), ylab = 'Extinction rate', xlab = 'Ma' )
polygon(c(age, rev(age)), c(M_hpd_M95, rev(M_hpd_m95)), col = alpha("#e34a33",trans), border = NA)
lines(rev(age), rev(M_mean), col = "#e34a33", lwd=3)
plot(age,age,type = 'n', ylim = c(-1.39791728059, 0.371596577613), xlim = c(-57.75,2.75), ylab = 'Net diversification rate', xlab = 'Ma' )
abline(h=0,lty=2,col="darkred")
polygon(c(age, rev(age)), c(R_hpd_M95, rev(R_hpd_m95)), col = alpha("#504A4B",trans), border = NA)
lines(rev(age), rev(R_mean), col = "#504A4B", lwd=3)
plot(age,age,type = 'n', ylim = c(0, max(1/M_mean)), xlim = c(-57.75,2.75), ylab = 'Longevity (Myr)', xlab = 'Ma' )
lines(rev(age), rev(1/M_mean), col = "#504A4B", lwd=3)
n <- dev.off()
# 1 files combined:
# 	/home/eeb177-student/Desktop/eeb-177/lab-work/exercise-9/pyrate_mcmc_logs/canid_occ_1_marginal_rates.log

# 95% HPDs calculated using code from Biopy (https://www.cs.auckland.ac.nz/~yhel002/biopy/)

pdf(file='/home/eeb177-student/Desktop/eeb-177/lab-work/exercise-9/pyrate_mcmc_logs/canid_occ_1_marginal_rates_RTT.pdf',width=0.6*9, height=16.8)
par(mfrow=c(4,1))
library(scales)
L_hpd_m95=c(0.13356812229, 0.13356812229,0.13356812229,0.13356812229,0.100955290171,0.0980712617772,0.0537445345572,0.0512231532998,0.0528433367002,0.0528433367002,0.0528433367002,0.0528433367002,0.0528433367002,0.0528433367002,0.0528433367002,0.0528433367002,0.0528433367002,0.0512231532998,0.0528433367002,0.0512231532998,0.0733014728809,0.123172887436,0.123172887436,0.132296668082,0.132296668082,0.132296668082,0.132296668082,0.123172887436,0.127594805546,0.132296668082,0.123172887436,0.123172887436,0.132296668082,0.123172887436,0.123172887436,0.123172887436,0.123172887436,0.132296668082,0.122194583356,0.122194583356,0.122194583356,0.110687318343,0.0946036187666,0.100337265522,0.100337265522,0.100337265522,0.100337265522,0.100337265522,0.100337265522,0.100337265522)
L_hpd_M95=c(0.336900783613, 0.336900783613,0.336900783613,0.340792315196,0.322391973455,0.336900783613,0.254350674806,0.151472413534,0.151472413534,0.151472413534,0.151472413534,0.151472413534,0.151472413534,0.151472413534,0.151472413534,0.151472413534,0.151472413534,0.151472413534,0.159119154052,0.210499446848,0.240110794642,0.244963101714,0.240110794642,0.246063040028,0.246063040028,0.246063040028,0.246063040028,0.239473294248,0.244490922598,0.244963101714,0.254486253764,0.290672878016,0.329620095724,0.329620095724,0.348307355838,0.348307355838,0.354187851149,0.380541345971,0.377202197368,0.395229343884,0.395229343884,0.395229343884,0.395229343884,0.395229343884,0.395229343884,0.395229343884,0.395229343884,0.397458726419,0.397458726419,0.397458726419)
M_hpd_m95=c(0.847358380723, 0.847358380723,0.0857915158809,0.0857915158809,0.0857915158809,0.0927826010454,0.0865729073097,0.0927826010454,0.0927826010454,0.0927826010454,0.0857915158809,0.0857915158809,0.0932050989401,0.0932050989401,0.0932050989401,0.0932050989401,0.0932050989401,0.0927826010454,0.0927826010454,0.0927826010454,0.0874954590106,0.0857915158809,0.0626324671607,0.0557049002859,0.0534557075844,0.0534557075844,0.0534557075844,0.0534557075844,0.0534557075844,0.0534557075844,0.0534557075844,0.0534557075844,0.0534557075844,0.0534557075844,0.0534557075844,0.0534557075844,0.0534557075844,0.0482891928418,0.0343573495595,0.0420770423698,0.0420770423698,0.0416424445045,0.0416424445045,0.0416424445045,0.0416424445045,0.0343573495595,0.0343573495595,0.0343573495595,0.0343573495595,0.0343573495595)
M_hpd_M95=c(1.51306129724, 1.51306129724,0.150711756832,0.150711756832,0.150711756832,0.157032132159,0.150711756832,0.153950209854,0.153950209854,0.148711959325,0.141090834857,0.141090834857,0.148711959325,0.148711959325,0.148711959325,0.148711959325,0.148711959325,0.148711959325,0.148711959325,0.150711756832,0.144643815093,0.15332728761,0.142467135099,0.136464417637,0.134292972044,0.124215557145,0.124215557145,0.124215557145,0.124215557145,0.124215557145,0.124215557145,0.124215557145,0.124215557145,0.124215557145,0.124215557145,0.124215557145,0.124215557145,0.127420501697,0.139423607368,0.162677789954,0.175842811121,0.188416516548,0.227206283165,0.227206283165,0.230563547948,0.227206283165,0.227206283165,0.227206283165,0.227206283165,0.227206283165)
R_hpd_m95=c(-1.23002627163, -1.23002627163,0.00556577574041,0.00120999259714,-0.00956248367422,-0.0304312985531,-0.0794412019587,-0.0845496650916,-0.0810275320193,-0.0794412019587,-0.0763422883781,-0.0763422883781,-0.0763422883781,-0.0763422883781,-0.0794412019587,-0.0794412019587,-0.0794412019587,-0.0810275320193,-0.0810275320193,-0.0736759671398,-0.0463218132647,0.00556577574041,0.0101344484289,0.0277173604949,0.0277414000547,0.035014145408,0.035014145408,0.035014145408,0.035014145408,0.035014145408,0.035014145408,0.0352140331434,0.0418711948742,0.0378509033512,0.0342351412763,0.0342351412763,0.0342351412763,0.0246003541017,-0.00184541689197,0.014444598024,-0.0109245942837,-0.0185358385082,-0.117355380627,-0.092174065408,-0.092174065408,-0.131355516225,-0.131355516225,-0.131355516225,-0.131355516225,-0.131355516225)
R_hpd_M95=c(-0.559691074884, -0.559691074884,0.219940358062,0.217235942767,0.214786106463,0.217235942767,0.140923711165,0.035212674151,0.035212674151,0.035212674151,0.035212674151,0.035212674151,0.035212674151,0.035212674151,0.035212674151,0.035212674151,0.035212674151,0.035212674151,0.0461326581149,0.0900194779313,0.134840293477,0.142718660843,0.142718660843,0.162955073249,0.162955073249,0.162955073249,0.162955073249,0.165156527241,0.165156527241,0.164867520794,0.182216864822,0.195721636792,0.246521014371,0.256870694383,0.274727515645,0.274727515645,0.283476334129,0.291123907899,0.29441240394,0.31669660386,0.31669660386,0.31669660386,0.31669660386,0.332304757477,0.332304757477,0.296498063601,0.296498063601,0.306031197781,0.306031197781,0.306031197781)
L_mean=c(0.244291462769, 0.244291462769,0.244512583361,0.244013086377,0.237793662117,0.23133818568,0.105368098104,0.0863879811715,0.0857603018469,0.0857603018469,0.0857603018469,0.0857603018469,0.0857603018469,0.0857603018469,0.0860384091544,0.0863318544143,0.0864803870477,0.0870140473051,0.0898485884921,0.111884635676,0.16961032961,0.187723730667,0.188572419817,0.189663061693,0.189663061693,0.189408954952,0.189408954952,0.188697828544,0.188696541195,0.190189267479,0.196117659216,0.203919072266,0.211155042587,0.215095232301,0.219408391449,0.220321586614,0.221553268508,0.224644047175,0.224409846878,0.223804552566,0.224250437393,0.225768400669,0.228256752272,0.227111055912,0.227068175723,0.227562626077,0.227719418946,0.231151844,0.231840569487,0.231840569487)
M_mean=c(1.13711509834, 1.13711509834,0.119561438779,0.119561438779,0.119561438779,0.11962245199,0.119247234141,0.117441098335,0.117441098335,0.116321574326,0.116010214447,0.116010214447,0.116147999736,0.116147999736,0.116147999736,0.116147999736,0.116147999736,0.116348694749,0.116338606059,0.116779010652,0.116602227413,0.114504718177,0.109622729661,0.0985726436688,0.0938400489786,0.0911561872267,0.0909978629984,0.0909978629984,0.090990360399,0.090990360399,0.090990360399,0.090990360399,0.090990360399,0.090990360399,0.090990360399,0.090990360399,0.0909682249445,0.0916080498814,0.0932972693639,0.094429178568,0.0976864790244,0.0986992071461,0.103614361725,0.104014604758,0.105528226807,0.1077873282,0.1077873282,0.1077873282,0.1077873282,0.1077873282)
R_mean=c(-0.892823635572, -0.892823635572,0.124951144582,0.124451647599,0.118232223339,0.11171573369,-0.0138791360371,-0.0310531171636,-0.0316807964882,-0.0305612724792,-0.0302499125999,-0.0302499125999,-0.0303876978886,-0.0303876978886,-0.0301095905811,-0.0298161453212,-0.0296676126879,-0.0293346474436,-0.0264900175669,-0.00489437497617,0.0530081021964,0.0732190124899,0.078949690156,0.0910904180245,0.0958230127147,0.0982527677251,0.0984110919535,0.0976999655459,0.0977061807962,0.09919890708,0.105127298817,0.112928711867,0.120164682188,0.124104871902,0.12841803105,0.129331226215,0.130585043564,0.133035997294,0.131112577514,0.129375373998,0.126563958368,0.127069193523,0.124642390547,0.123096451154,0.121539948916,0.119775297877,0.119932090747,0.1233645158,0.124053241288,0.124053241288)
trans=0.5
age=(0:(50-1))* -1
plot(age,age,type = 'n', ylim = c(0, 0.437204599061), xlim = c(-52.5,2.5), ylab = 'Speciation rate', xlab = 'Ma',main='canid' )
polygon(c(age, rev(age)), c(L_hpd_M95, rev(L_hpd_m95)), col = alpha("#4c4cec",trans), border = NA)
lines(rev(age), rev(L_mean), col = "#4c4cec", lwd=3)
plot(age,age,type = 'n', ylim = c(0, 1.66436742697), xlim = c(-52.5,2.5), ylab = 'Extinction rate', xlab = 'Ma' )
polygon(c(age, rev(age)), c(M_hpd_M95, rev(M_hpd_m95)), col = alpha("#e34a33",trans), border = NA)
lines(rev(age), rev(M_mean), col = "#e34a33", lwd=3)
plot(age,age,type = 'n', ylim = c(-1.35302889879, 0.365535233225), xlim = c(-52.5,2.5), ylab = 'Net diversification rate', xlab = 'Ma' )
abline(h=0,lty=2,col="darkred")
polygon(c(age, rev(age)), c(R_hpd_M95, rev(R_hpd_m95)), col = alpha("#504A4B",trans), border = NA)
lines(rev(age), rev(R_mean), col = "#504A4B", lwd=3)
plot(age,age,type = 'n', ylim = c(0, max(1/M_mean)), xlim = c(-52.5,2.5), ylab = 'Longevity (Myr)', xlab = 'Ma' )
lines(rev(age), rev(1/M_mean), col = "#504A4B", lwd=3)
n <- dev.off()
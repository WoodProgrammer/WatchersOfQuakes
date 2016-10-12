/*Emir ÖZBIR 2150656037 emirozbirdeveloper@gmail.com NKÜ Bilgisyar Mühendisliği */
/*KATALAN SAYISI formulünde Stackoverflow'dan yardım aldığım adres :http://stackoverflow.com/questions/5717571/what-is-wrong-with-my-catalan-number-logic*/
/*PALıNDROME SAYı'DA YARDıM ALDıĞıM ADDRESS:http://www.sanfoundry.com/csharp-program-reverse-palindrome/*/
using System;
class MainClass
{

	public static double fac(double x){
		if (x == 0) {
			return 1;
		} else {
			return x * fac (x - 1);
		}

	}

	public static double TersToplam(int m,int n){
		double toplam = 0;
		if(m<n){
			for (double i = m; i <= n; i++) {
				toplam += 1/i;
			}

		}
		if(n<m){
			for (double i = n; i <= m; i++) {
				toplam += 1/i;
			}

		}
		return toplam;
	}
	public static int Asal(int kontrol_sayi){
		int toplam=0;
		int don_deger=0;
		for (int i = 2; i <= 10; i++) {
			if (kontrol_sayi % i == 0) {
				if (kontrol_sayi != i) {
					toplam++;
				}
			}
		}
		if (toplam == 0) {
			don_deger = kontrol_sayi;
		}
		return don_deger;
	}
	public static int AsalFark(int n){
		if (n <= 2) {
			return 0;
		}


		int en_buyuk_yakin_asal=0;
		int en_kucuk_yakin_asal=0;
		int count_sayi=n;
		for(int i=0;i<=3;i++){
			count_sayi++;
			if (Asal (count_sayi) == count_sayi) {
				en_buyuk_yakin_asal=count_sayi;
				break;
			}
		}
		count_sayi = n;
		for(int i=0;i<=3;i++){
			n--;
			if (Asal (n) == n) {
				en_kucuk_yakin_asal=n;
				break;
			}
		}

		return en_buyuk_yakin_asal - en_kucuk_yakin_asal;
	}
	/*PALıNDROME SAYı'DA YARDıM ALDıĞıM ADDRESS:http://www.sanfoundry.com/csharp-program-reverse-palindrome/*/

	public static int PalindromKontrol(int sayi){
		int num, temp;
		int temp2, donus = 0;
		int top = 0;
		num = sayi;
		temp = num;
		while (num > 0)
		{
			temp2 = num % 10;

			donus = donus * 10 + temp2;
			num /= 10;
		}

		if (temp == donus) {
			top = sayi;
		}
		return top;
	}


	public static int Palindrome5(){
		int palindrom_top5=0;
		for (int i = 10000; i <= 99999; i++) {
			palindrom_top5+=PalindromKontrol (i);

		}
		return palindrom_top5;


	}


	public static int Palindrome6(){
		int palindrom_top6=0;

		for (int i = 100000; i <= 999999; i++) {
			palindrom_top6+=PalindromKontrol (i);

		}
		return palindrom_top6;


	}
	public static double PiKareBul(int m){
		if (m < 1) {
			return 3 * Math.Pow (14, 2);
		}
		double top=0;
		for (int i = 1; i < m; i++) {
			top += 1 /( (i * i * i) * Math.Pow (m + 1, 3)) ;
		}
		return Math.Sqrt(-1*(top-10));

	}

	public static double EulerBul(int m){
		if (m < 1) {
			return 2.718;
		}
		double euler=0;
		for (int i = 0; i <= m; i++) {
			euler+=1/fac(i);
		}
		return euler;
	}
	/*KATALAN SAYISI formulünde Stackoverflow'dan yardım aldığım adres :http://stackoverflow.com/questions/5717571/what-is-wrong-with-my-catalan-number-logic*/

	public static double KatalanSayisi(int n){
		if(n<0){
			return -1;
		}
		if (n == 1){
			return 1;
		}
		else{

			return 2*(2*n-1)*KatalanSayisi(n-1)/(n+1);
		}
	}
	public static int CarpanToplam(int sayi){
		if(sayi<1){
			return -1;
		}
		int carpan = 0;
		//int toplam=0;
		for(int i = 1;i<=sayi;i++){
			if (sayi % i==0) {
				carpan+=i;
			}
		}

		return carpan;

	}
	public static int Ekok(int m,int n){

		if(m<=0||n<=0){
			return -1;
		}
		int buyuk = m>n?m:n;
		int a, b;
		int ekok=0;
		for (int i = 1; i <= buyuk; i++) {
			a=m*i;
			for (int k = 1; k <= buyuk; k++) {
				b = n*k;
				if (a == b) {
					ekok = b;
					return ekok;
				}

			}
		}
		return ekok;
	}






	public static void Main (string[] args)
	{
		Console.WriteLine ("TERS TOPLAM IÇIN 1.RAKAMI GIRINIZ: ");
		int ters_toplam = Int32.Parse(Console.ReadLine ());
		Console.WriteLine ("TERS TOPLAM IÇIN 2.RAKAMI GIRINIZ: ");
		int ters_toplam2 = Int32.Parse(Console.ReadLine ());
		Console.WriteLine(TersToplam (ters_toplam, ters_toplam2));


		Console.WriteLine ("ASAL FARK IÇIN RAKAMI GIRINIZ: ");
		int asal_fark = Int32.Parse(Console.ReadLine());
		Console.WriteLine(AsalFark (asal_fark));



		Console.WriteLine (Palindrome5());
		Console.WriteLine (Palindrome6());

		Console.WriteLine ("Pikarebul ıcın : RAKAMI GIRINIZ: ");
		int pikare_bul = Int32.Parse(Console.ReadLine());

		Console.WriteLine (PiKareBul(pikare_bul));
		Console.WriteLine ("EulerToplamı için RAKAMI GIRINIZ: ");
		int euler_top=Int32.Parse(Console.ReadLine());
		Console.WriteLine (EulerBul(euler_top));

		Console.WriteLine ("Katalan için RAKAMI GIRINIZ: ");

		int katalan=Int32.Parse(Console.ReadLine());
		Console.WriteLine ("{0} KATALAN SAYISI: {1}",katalan,KatalanSayisi(katalan-1));

		Console.WriteLine ("CARPANTOPLAMı için RAKAMI GIRINIZ: ");

		int carpan=Int32.Parse(Console.ReadLine());
		Console.WriteLine ("{0}'nin carpanları toplami {1}",carpan,CarpanToplam(carpan));


		Console.WriteLine ("Ekok için 1 . RAKAMI GIRINIZ: ");
		int ekok_1=Int32.Parse(Console.ReadLine());
		Console.WriteLine ("Ekok için 2 . RAKAMI GIRINIZ: ");

		int ekok_2=Int32.Parse(Console.ReadLine());

		Console.WriteLine ("{0}ile {1} ' in ekok'u {2}",ekok_1,ekok_2,Ekok(12,18));

	}
}


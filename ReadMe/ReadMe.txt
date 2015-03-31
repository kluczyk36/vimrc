
15/02/2015 19:16:32 VirTual: masz całkiem inny vimrc niż ten domyśny, no nic pomyślę później o tym jak to zrobić :)
15/02/2015 19:22:42 ! Piotrek Skrok: Ten source wystarczy
15/02/2015 19:23:01 ! Piotrek Skrok: Zrób :echo $HOME w vimie i tam _vimrc z tym daj
15/02/2015 20:23:29 VirTual: pograłem przed chwila w cobalta na padzie, fajna sprawa w 3 osoby graliśmy jedna na klaw i dwie na padach, super :<br>
15/02/2015 20:24:37 VirTual: to tak zebym dobrze zrozumiał, kupiuje cała zawartość repo zamieniając swojego vima Twoim
15/02/2015 20:24:57 VirTual: dalej wchodze w vimrc Twoje i daje ścieżkę do _vimrc
15/02/2015 20:25:28 ! Piotrek Skrok: To repo gdzieś sklonować, niczego nie trzeba zastępować
15/02/2015 20:25:59 ! Piotrek Skrok: W vimie zrób :echo $HOME, i w tym katalogu zrób nowe _vimrc w którym dasz source ścieżka/do/repo/vimrc
15/02/2015 20:26:02 VirTual: ahm, a nie można wskazać ściezki do repo?
15/02/2015 20:26:05 VirTual: oki
15/02/2015 20:28:25 VirTual: zrobiłem w vimie :echo $HOME i zwórciło mi ścieżkę C:\Users\Łukasz więc tam daje _vimrc
15/02/2015 20:28:35 ! Piotrek Skrok: Mhm
15/02/2015 20:30:27 VirTual: wpisałem w tamtym _vimrc
15/02/2015 20:30:35 VirTual: g:\Repository\TheCatPlusPlus\vimrc ale nie działa
15/02/2015 20:30:48 ! Piotrek Skrok: Tylko do pliku ścieżka
15/02/2015 20:31:01 VirTual: g:\Repository\TheCatPlusPlus\
15/02/2015 20:31:04 VirTual: tak również
15/02/2015 20:31:38 ! Piotrek Skrok: W sensie ten vimrc na końcu to musi być plik
15/02/2015 20:32:43 ! Piotrek Skrok: Jak zrobisz :echo $MYVIMRC to co pokazuje?
15/02/2015 20:34:14 VirTual: C:\Users\Łukasz\_vimrc
15/02/2015 20:34:43 ! Piotrek Skrok: No to ok, to coś z tym source, g:\Repository\TheCatPlusPlus\vimrc to katalog czy plik?
15/02/2015 20:34:49 ! Piotrek Skrok: Bo nie jestem pewny jak sklonowałeś
15/02/2015 20:35:04 VirTual: chciałem wskazać ten skopiowany z repo
15/02/2015 20:35:10 VirTual: vimrc to plik z Twojego repo
15/02/2015 20:35:17 VirTual: a reszta o ścieżka do repo
15/02/2015 20:35:47 ! Piotrek Skrok: No to powinno być ok, tylko tam jeszcze submodules są, więc trzeba git submodule update -i
15/02/2015 20:35:57 ! Piotrek Skrok: git submodule update --init
15/02/2015 20:36:16 ! Piotrek Skrok: I ew. source g:/Repository/TheCatPlusPlus/vimrc
15/02/2015 20:36:22 ! Piotrek Skrok: Jeśli nadal coś mu nie pasuje
15/02/2015 20:36:29 ! Piotrek Skrok: W :messages powinny być błędy jakby coś
15/02/2015 20:37:35 VirTual: Error detected while processing g:\Repository\TheCatPlusPlus\bundles\om<br>nisharp\plugin\OmniSharp.vim:<br><br>line  15:<br><br>E370: Could not load library python27.dll<br><br>E263: Sorry, this command is disabled, the Python library could not be <br>loaded.<br><br>line  16:<br><br>E370: Could not load library python27.dll<br><br>E263: Sorry, this command is disabled, the Python library could not be <br>loaded.<br><br>line  17:<br><br>E370: Could not load library python27.dll<br><br>E263: Sorry, this command is disabled, the Python library could not be <br>loaded.
15/02/2015 20:38:27 ! Piotrek Skrok: Pythona z dobrymi bitami zainstalowałeś?
15/02/2015 20:38:58 VirTual: 64
15/02/2015 20:38:59 VirTual: chyba
15/02/2015 20:39:10 ! Piotrek Skrok: Musi być taki sam jak vim
15/02/2015 20:39:18 VirTual: wiec 32
15/02/2015 20:39:19 VirTual: ok
15/02/2015 20:44:06 VirTual: ahm, dlatego nie działało, a ja myślałem że to coś ze wskazaniem :P
15/02/2015 20:44:10 VirTual: a to python :p
15/02/2015 20:45:50 VirTual: a co zrobiło polecenie<br>git submodule update --init
15/02/2015 20:46:04 VirTual: bo coś się zrobiło w sourcetree ale cgciałbym wiedzieć co :)
15/02/2015 20:46:30 ! Piotrek Skrok: Wszystkie pluginy ściąga co są w .gitmodules zdefiniowane
15/02/2015 20:46:45 VirTual: ahm :D
15/02/2015 22:41:20 VirTual: wszystko spoko działa, chciałem jeszcze sobie zrobić gvima żeby zawsze z parametrem --remote-tab-silent się uruchamiał
15/02/2015 22:41:22 VirTual: hmm
15/02/2015 22:43:13 VirTual: wszystko spoko działa tylko nie wiem czemu jak odpalę gvima normalnie to jest taki snadardowy
15/02/2015 22:43:41 VirTual: a jak odpalę przez F4 na jakimś pliku w total commander z poleceniem D:\Program Files (x86)\Vim\vim74\gvim.exe --remote-tab-silent
15/02/2015 22:43:49 VirTual: to działa normalnie hmm
15/02/2015 22:43:53 ! Piotrek Skrok: Coś się nie ładuje
15/02/2015 22:43:56 ! Piotrek Skrok: :messages sprawdź
15/02/2015 22:45:21 VirTual: Error detected while procesing GUIEnter Auto commands for &quot;*&quot;:<br>E364: Library cal filed for &quot;Maximalize()&quot;
15/02/2015 22:45:49 ! Piotrek Skrok: A, bo tam jest DLL 64-bitowy do automatycznej maksymalizacji okna
15/02/2015 22:46:10 ! Piotrek Skrok: W vimfiles/plugin czy coś takiego
15/02/2015 22:46:14 VirTual: oki
15/02/2015 22:56:43 VirTual: dobra dzieki wielkie za pomoc, pozdrawiam, do jutra, :)
15/02/2015 22:56:48 ! Piotrek Skrok: Bye
15/02/2015 22:57:00 VirTual: lecę spać, może Ty też idziesz? :P
15/02/2015 22:57:10 ! Piotrek Skrok: SG-1 oglądam
15/02/2015 22:57:20 VirTual: haha, który sezon? :D
15/02/2015 22:57:30 ! Piotrek Skrok: Jakieś losowe odcinki
15/02/2015 22:57:47 VirTual: ahm, miłego :)
20/02/2015 19:05:24 ! Piotrek Skrok: Jutro będziemy coś grali koło 18 jakby co to wpadaj
23/02/2015 08:23:19 VirTual: kiedy było to jutro? :P
23/02/2015 08:23:32 VirTual: bo na WTW nie pokazuja mi się daty ;p
23/02/2015 08:23:46 VirTual: odezwę się po pracy ;)
23/02/2015 08:23:55 VirTual: idę na poczte po ledy z chin :D
23/02/2015 14:34:07 ! Piotrek Skrok: W sobotę :p
23/02/2015 21:22:23 VirTual: ahm, to za późno się skumałem :p
23/02/2015 21:31:41 ! Piotrek Skrok: Po 22 gdzieś będziemy online w to grać http://store.steampowered.com/app/265630
23/02/2015 21:34:08 VirTual: oj, ja już będę pewnie spał :p
23/02/2015 21:37:27 VirTual: rano do pracy, jadę wczesnie, aaa ledki do mnie przyszły w końcu z chin, przypłyneły :)
23/02/2015 21:37:48 VirTual: czekam na arduino aż przyjdzie i robię ambilight :)
23/02/2015 21:37:55 VirTual: a co tam u Ciebie? :)
23/02/2015 21:42:46 ! Piotrek Skrok: Projekt jakoś idzie
23/02/2015 21:43:17 ! Piotrek Skrok: Parę propozycji do usprawnienia pracy dałem w czwartek i chyba nawet większość przejdzie
23/02/2015 21:45:58 VirTual: fajnie, ja teraz prawie tylko w zamówieniach siedzę i zarządzam , pff nawet mam studenta praktykatna pod sobą i 3 innych pracowników :D
23/02/2015 21:59:07 VirTual: usuwam rzeczy z dropa
23/02/2015 21:59:27 VirTual: Ty już to zrobiłeś czy wykupisz jakiś pakiet?
23/02/2015 22:02:56 ! Piotrek Skrok: Backupy przeniosłem a na inne rzeczy standard mi wystarczy
23/02/2015 22:06:12 VirTual: ok


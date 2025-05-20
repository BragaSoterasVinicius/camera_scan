set posicaoIp = 0
set numeroDeCameras = 0
:proximaPorta
	::chamada ffmpeg com a posicaoIp concatenada na ponta
	if !errorlevel! NEQ 0(
		set /a numeroDeCameras += 1
		set /a posicaoIp +=1
		goto proximaPorta
	)|| if proximaPorta == 15(
		echo 'nenhuma câmera está conectada ao wifi correto'
	)
echo "Wifi escaneado, %numeroDeCameras% câmeras conectadas."
pause



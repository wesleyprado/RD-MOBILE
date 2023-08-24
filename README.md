# RD-MOBILE
## Env Config

## Pré requesitos:

## Android Studio

```sh
  https://developer.android.com/studio
  ```

  ## Appium 

```sh
  https://appium.io/
  ```

  ## Appium-Inspector

```sh
  https://github.com/appium/appium-inspector/releases
  ```

## Ruby

```sh
  Windows Install:  https://rubyinstaller.org/downloads/
  ```
 ```sh
  Linux Install: 
 ```
```sh
  sudo apt-get install ruby-full
  sudo apt install ruby2.5-dev
  sudo apt-get install ubuntu-dev-tools
  sudo apt-get install libffi-dev
  ```
## VsCode

```sh
  Windows Install:  https://code.visualstudio.com/download
 ```
```sh
  Linux Install:  https://code.visualstudio.com/download
```
## VsCode Extensions:

  * Ruby	
  * Docker
  * Cucumber-mapper-ruby	
  * Snippets and Syntax Highlight for Gherkin (Cucumber)	
  * VSCode Ruby
  * vscode-icons

### Configuração do Emulador:

1 - Instale e configure o Android Studio  
2 - Abra o Android Studio e crie um Dispositivo Virtual: "Pixel 4 API 33"  
3 - Rode o emulador do dispositivo criado 

### Execute o Appium Server

Basta abrir o aplicativo

	
## Faça o clone do projeto ou o download:

```sh
gem install bundler
bundle install
```
## Rodar os testes android local

 ```sh
cucumber -p android -p json
```
## Rodar os testes ios local

 ```sh
cucumber -p ios -p json
```
## Rodar os testes android nuvem

 ```sh
cucumber -p android_farm
```

## Rodar os testes ios nuvem

 ```sh
cucumber -p ios_farm
```

### Lembre-se de ajustar seu arquivo .env de acordo

## Report

### Path :
* reports/report.html
* reports/report.json

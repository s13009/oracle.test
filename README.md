## 演習の環境設定手順

1. 「[Oracleインスタントクライアントのダウンロード](http://www.oracle.com/technetwork/jp/topics/index-099943-ja.html)から以下をダウンロードし、展開。
	* instantclient-basic-linx-x.x.x.x.xzip
	* instantclient-sqlplus-linux-x.x.x.x.x.zip
1. 
1. 「[oracle.2014](https://github.com/KimiyukiYamauchi/oracle.2014.git)」を「git clone」
<br />$ git clone https://github.com/KimiyukiYamauchi/oracle.2014.git (任意のディレクトリ名)<br /><br />
2. リモートリポジトリ「origin」を別の名前に変える
<br />$ git remote rename origin  (任意の別名)<br /><br />
3. 各自のGithubに演習をアップするためのリポジトリを作成
4. 上で作成したリモートリポジトリに「origin」と名前をつける
<br />$ git remote add origin  (各自のリモートリポジトリのURL)<br /><br />
5. ローカルリポジトリをリモートのpushする
<br />$ git push -u origin master<br /><br />
6. 以降は以下の操作

	* 演習を作成し、講師提出する場合、

		1. ローカルリポジトリをリモートにpushする 
<br />$ git push<br /><br />
		2. 講師に演習を作成した旨連絡

	* ひな形などの最新を入手する場合、

		1. 「[oracle.2014](https://github.com/KimiyukiYamauchi/oracle.2014.git)」を「git pull」
<br />$ git pull -u (自分がつけた別名) master<br /><br />

## 演習問題

1. 

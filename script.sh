pwd | awk -F/ '{print $NF }' > ./config
python3 git_repo_creator.py
git init
git add .
git commit -a --allow-empty-message -m ''
filename=`cat config`
git remote add origin https://github.com/kaushik-infosec/${filename}"-.git"
git push https://Kaushik-infosec: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@github.com/Kaushik-infosec/${filename}"-.git" --all 
#https://auth0.com/blog/secure-software-supply-chain-with-github-security-features/

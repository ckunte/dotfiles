# Makefile for uploading site(s) to host
# 2019 ckunte

# Folder / location
SITES=${HOME}/Sites
# Exclude files
EXCL=${HOME}/excl.txt
# User input <host> at command line like for example:
# make up HOST=imac
SHELL=/bin/zsh

default:
	@echo "For uploading site(s)"
	@echo 'Usage:'
	@echo ' make ckup HOST=<host>  Update ck.lo to <host>'
	@echo ' make lnup HOST=<host>  Update ln.lo to <host>'
	@echo ' make zup               Upload latest blog to zero.local'
	@echo ' make czl               Run Chisel + upload latest ln.lo to zero.local'

ckup:
	@echo "Updating ck.lo assets on ${HOST}.local"
	@rsync -cavh --exclude-from=${EXCL} --delete -e 'ssh' ${SITES}/ck.lo/ ${USER}@${HOST}.local:${SITES}/ck.lo/
	@rsync -cavh --exclude-from=${EXCL} --delete -e 'ssh' ${SITES}/wposts/ ${USER}@${HOST}.local:${SITES}/wposts/
	@rsync -cavh --exclude-from=${EXCL} --delete -e 'ssh' ${SITES}/_bak/drafts/ ${USER}@${HOST}.local:${SITES}/_bak/drafts/
	@rsync -cavh --exclude-from=${EXCL} --delete -e 'ssh' ${SITES}/_bak/draft-images/ ${USER}@${HOST}.local:${SITES}/_bak/draft-images/
	@echo "done."

lnup:
	@echo "Updating ln.lo assets on ${HOST}.local"
	@rsync -cavh --exclude-from=${EXCL} --delete -e 'ssh' ${SITES}/ln.lo/ ${USER}@${HOST}.local:${SITES}/ck.lo/
	@rsync -cavh --exclude-from=${EXCL} --delete -e 'ssh' ${SITES}/posts/ ${USER}@${HOST}.local:${SITES}/posts/
	@rsync -cavh --exclude-from=${EXCL} --delete -e 'ssh' ${SITES}/_bak/drafts/ ${USER}@${HOST}.local:${SITES}/_bak/drafts/
	@rsync -cavh --exclude-from=${EXCL} --delete -e 'ssh' ${SITES}/_bak/draft-images/ ${USER}@${HOST}.local:${SITES}/_bak/draft-images/
	@echo "done."

zup: zl

czl: ch zl

ch:
	@time python3 ~/Sites/chisel/chisel3.py	

sass:
	@echo -n "Running sass.."
	@sass --style compressed ${SITES}/ln.lo/css/vanilla-sans-new.scss ${SITES}/ln.lo/css/vanilla.css
	@echo "done."

zl:
	@echo "Uploading latest blog to zero.local.."
	@rsync -cavh --exclude-from=${EXCL}  --delete -e 'ssh' ~/Sites/ln.lo/ ${USER}@zero.local:/var/www/html/
	@echo "done."

rzup:
	@echo "Downloading latest blog from zero.local.."
	@rsync -cavh --exclude-from=${EXCL}  --delete -e 'ssh' ${USER}@zero.local:/var/www/html/ ${SITES}/ln.lo/
	@echo "done."
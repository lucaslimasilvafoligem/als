sig Git {
proj: lone Proj
}

sig Proj {
repo: one Repo
}

sig Repo {
branch: one Branch
}

sig Branch {
ver: one Versao
}

sig BranchMestre in Branch {}

sig Versao {
arq: some Arquivo
}

sig Arquivo {}

fact f {
#Git = 1
all g: Git | one g.proj
some Arquivo
some Proj
all p: Proj | one p.repo
all r: Repo | one r.branch
all b: Branch | one b.ver
all v: Versao | some v.arq
}

pred show() {}

run show for 3
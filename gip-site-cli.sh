#!/bin/bash

echo "🚀 GIP-SITE CLI - Gerador de Estrutura para Sites Inteligentes"
echo "--------------------------------------------------------------"

read -p "📋 Nome do projeto (slug): " SITE_NAME
read -p "🧠 Descreva brevemente o objetivo do site: " SITE_BRIEF

echo "📦 Tipo de site:"
select SITE_TYPE in "Site Institucional" "Landing Page" "Portal" "Dashboard Privado" "Microsserviço/API"; do break; done

echo "🔧 Ativar packs (espaço entre números):"
echo "  [1] SEO  [2] Forms  [3] Segurança  [4] Performance  [5] API"
read -p "Packs: " SELECTED_PACKS

echo "🧩 Campos personalizados:"
select CAMPOS in "MetaBox" "JetEngine" "ACF Pro"; do break; done

echo "🚀 Método de deploy:"
select DEPLOY in "GitHub Actions" "FTP Manual" "Docker Local"; do break; done

read -p "🔗 Conectar a Git? (s/n): " GIT_ENABLE

FOLDER="./$SITE_NAME"
mkdir -p "$FOLDER/gip-content/"{modules,layouts,autoload,media,i18n,widgets,branding}
mkdir -p "$FOLDER/deploy"
mkdir -p "$FOLDER/.gip-site"
touch "$FOLDER/core-config.php"
echo "# GitHub Actions" > "$FOLDER/deploy/github-actions.yml"
echo "# Script de Backup" > "$FOLDER/deploy/backup.sh"

cat > "$FOLDER/.gip-site/project.json" <<EOF
{
  "nome": "$SITE_NAME",
  "descricao": "$SITE_BRIEF",
  "tipo": "$SITE_TYPE",
  "packs": "$SELECTED_PACKS",
  "campos": "$CAMPOS",
  "deploy": "$DEPLOY",
  "git": "$( [ "$GIT_ENABLE" == "s" ] && echo true || echo false )"
}
EOF

echo ""
echo "✅ Projeto $SITE_NAME criado com sucesso!"
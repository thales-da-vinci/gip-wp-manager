# 🧠 GIP WP Manager v2.0

**Plugin oficial do GIP Framework** para gerenciar múltiplos sites WordPress de forma remota, segura e automatizada.

---

## 🚀 O que é?

O GIP WP Manager é um painel central que funciona como uma central de controle para todos os sites criados com o GIP Framework.  
Inspirado no visual do **Softaculous**, ele oferece **backup automático, deploy remoto, restauração em 1 clique e integração com JetEngine, SMTP, segurança, uploads e muito mais**.

---

## 🗂️ Funcionalidades Principais

### 🔄 **Backup & Restauração**
- Backup completo (arquivos + banco)
- Armazenamento externo: **Google Drive** (obrigatório), FTP, GitHub
- Restauração direta por CLI, painel, FTP ou GitHub
- Histórico e agendamentos
- Interface igual ao plugin **Backuply Pro**

### 📦 **Deploy Remoto e Uploads**
- Upload de arquivos `.zip` para microsites
- Deploy visual via painel
- Deploy com `gip-install.sh` ou REST automático
- Histórico de versões e rollback

### 🌐 **Painel de Sites**
- Lista de todos os sites com status, versão e ações
- Integração com JetEngine e painel externo
- Sincronização de versões com `version.json` central

### ✉️ **SMTP Integrado (GoSMTP)**
- Diagnóstico SMTP
- Envio seguro com fallback
- Log de mensagens e conexão com Gmail / Amazon / Sendgrid

### 🛠️ **Ferramentas Admin (Base: Admin Enhancements)**
- Otimizações do WordPress
- Login personalizado e ocultação de paths
- Reorganização de menus por categorias
- Bloqueio de updates indesejados
- Gerenciador de arquivos completo

### 🧩 **JetEngine & CPT**
- Leitura de Custom Post Types
- Deploy automático de widgets e painéis
- Exportação + importação de configurações

---

## 🔐 Segurança

- Proteção CSRF, Nonces e IP Lock
- Autenticação via Token por Site
- Logs de atividade por microsite

---

## 📄 Como usar

1. Instale o plugin no seu **painel principal WordPress** (servidor ou multisite)
2. Acesse:  
   `Menu > GIP WP Manager`
3. Cadastre seus sites (via URL + token)
4. Acesse cada função:
   - Backup
   - Deploy
   - SMTP
   - JetEngine
   - Ferramentas avançadas

---

## 🧰 Requisitos

- WordPress 6.3+
- PHP 8.0+
- JetEngine (opcional)
- Permissões de `fsockopen` ou `curl`
- Conta Google Drive (opcional)

---

## 📦 Sobre o Projeto

- Autor: **Thales Da Vinci**
- Licença: Comercial / Privada
- Parte do ecossistema **[GIP Framework](https://github.com/thales-da-vinci/gip-framework)**

---


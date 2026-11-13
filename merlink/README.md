# Equipo Merlink · Agency Agents en español

Esta carpeta conecta los agentes de **Agency Agents** (el "pack de casi 300 agentes gratis") con el ecosistema de la agencia **Merlink Mastery** y sus marcas: Abovirtual Chile, Abovirtual México, Smart Property y Atlas.

## Qué es y si es seguro

- **Qué es:** una colección de agentes de IA especializados, cada uno en un archivo Markdown (`.md`) con su rol, forma de trabajar, entregables y métricas. Funciona como subagentes de Claude Code y también con Cursor, Gemini CLI, Copilot, Codex y otros.
- **Origen:** repositorio abierto [msitarzewski/agency-agents](https://github.com/msitarzewski/agency-agents), con licencia MIT. Este repo es tu fork.
- **Costo:** gratis. No pide cuenta, tarjeta ni claves de API.
- **Seguridad:** los agentes son texto, no programas. Los scripts del repo (`scripts/*.sh`) solo convierten y copian archivos de forma local; no descargan nada de internet. Los instaladores de esta carpeta hacen lo mismo: copian `.md` a tu carpeta de agentes de Claude Code.
- **Tamaño:** 234 agentes en este fork. Aquí se eligieron **62** para la agencia.

## Instalar en tu PC (Claude Code)

Windows (PowerShell), desde la carpeta del repo:

```powershell
powershell -ExecutionPolicy Bypass -File merlink\instalar-equipo-merlink.ps1          # equipo curado (62)
powershell -ExecutionPolicy Bypass -File merlink\instalar-equipo-merlink.ps1 -Todos   # los 234
```

Mac/Linux/Git Bash:

```bash
./merlink/instalar-equipo-merlink.sh          # equipo curado (62)
./merlink/instalar-equipo-merlink.sh --todos  # los 234
```

Luego, en Claude Code, pídele por nombre: _"Usa el agente Paid Social Strategist y arma una campaña de Meta Ads para Smart Property"_. Los agentes están en inglés, pero responden en español si se lo pides.

## Conectar con Atlas y otros sistemas

- **`equipo-merlink.json`** es el catálogo del equipo: áreas, marca, nombre, emoji, descripción y ruta de cada agente. El sitio Atlas (atlas-agentes.vercel.app) u otro sistema (CRM, n8n, cotizador) puede leerlo para mostrar el equipo o para cargar el prompt del agente correcto.
- **`lista-agentes.txt`** es la lista simple de archivos que usan los instaladores.
- Para usar un agente fuera de Claude Code (por ejemplo, en un bot de WhatsApp o un flujo de n8n), usa el contenido del `.md` como *system prompt* del modelo.

## El equipo por área

### Meta Ads y publicidad pagada
_Campañas en Meta/Google, creatividades, auditoría y medición (píxel, CAPI, UTM)._ · Marca: **Merlink Mastery**

| Agente | Archivo |
|---|---|
| 📱 Paid Social Strategist | [`paid-media/paid-media-paid-social-strategist.md`](../paid-media/paid-media-paid-social-strategist.md) |
| ✍️ Ad Creative Strategist | [`paid-media/paid-media-creative-strategist.md`](../paid-media/paid-media-creative-strategist.md) |
| 📋 Paid Media Auditor | [`paid-media/paid-media-auditor.md`](../paid-media/paid-media-auditor.md) |
| 📡 Tracking & Measurement Specialist | [`paid-media/paid-media-tracking-specialist.md`](../paid-media/paid-media-tracking-specialist.md) |
| 💰 PPC Campaign Strategist | [`paid-media/paid-media-ppc-strategist.md`](../paid-media/paid-media-ppc-strategist.md) |
| 🔍 Search Query Analyst | [`paid-media/paid-media-search-query-analyst.md`](../paid-media/paid-media-search-query-analyst.md) |
| 📺 Programmatic & Display Buyer | [`paid-media/paid-media-programmatic-buyer.md`](../paid-media/paid-media-programmatic-buyer.md) |

### Redes sociales y contenido de valor
_Estrategia de redes, Instagram, TikTok, LinkedIn, carruseles, video corto y publicación multiplataforma._ · Marca: **Merlink Mastery**

| Agente | Archivo |
|---|---|
| 📣 Social Media Strategist | [`marketing/marketing-social-media-strategist.md`](../marketing/marketing-social-media-strategist.md) |
| ✍️ Content Creator | [`marketing/marketing-content-creator.md`](../marketing/marketing-content-creator.md) |
| 📸 Instagram Curator | [`marketing/marketing-instagram-curator.md`](../marketing/marketing-instagram-curator.md) |
| 🎵 TikTok Strategist | [`marketing/marketing-tiktok-strategist.md`](../marketing/marketing-tiktok-strategist.md) |
| 💼 LinkedIn Content Creator | [`marketing/marketing-linkedin-content-creator.md`](../marketing/marketing-linkedin-content-creator.md) |
| 🎠 Carousel Growth Engine | [`marketing/marketing-carousel-growth-engine.md`](../marketing/marketing-carousel-growth-engine.md) |
| 🎬 Short-Video Editing Coach | [`marketing/marketing-short-video-editing-coach.md`](../marketing/marketing-short-video-editing-coach.md) |
| 🎬 Video Optimization Specialist | [`marketing/marketing-video-optimization-specialist.md`](../marketing/marketing-video-optimization-specialist.md) |
| 📡 Multi-Platform Publisher | [`marketing/marketing-multi-platform-publisher.md`](../marketing/marketing-multi-platform-publisher.md) |

### Rebranding y diseño
_Identidad de marca, storytelling visual, prompts de imagen y diseño UI/UX._ · Marca: **Todas las marcas**

| Agente | Archivo |
|---|---|
| 🎨 Brand Guardian | [`design/design-brand-guardian.md`](../design/design-brand-guardian.md) |
| 🎬 Visual Storyteller | [`design/design-visual-storyteller.md`](../design/design-visual-storyteller.md) |
| 📷 Image Prompt Engineer | [`design/design-image-prompt-engineer.md`](../design/design-image-prompt-engineer.md) |
| 🎨 UI Designer | [`design/design-ui-designer.md`](../design/design-ui-designer.md) |
| 📐 UX Architect | [`design/design-ux-architect.md`](../design/design-ux-architect.md) |

### Comunidad y monetización de canales
_Crecimiento, comunidad, email marketing, podcast y SEO/AEO para que la IA cite tus marcas._ · Marca: **Merlink Mastery**

| Agente | Archivo |
|---|---|
| 🚀 Growth Hacker | [`marketing/marketing-growth-hacker.md`](../marketing/marketing-growth-hacker.md) |
| 💬 Reddit Community Builder | [`marketing/marketing-reddit-community-builder.md`](../marketing/marketing-reddit-community-builder.md) |
| 📧 Email Marketing Strategist | [`marketing/marketing-email-strategist.md`](../marketing/marketing-email-strategist.md) |
| 🎧 Podcast Strategist | [`marketing/marketing-podcast-strategist.md`](../marketing/marketing-podcast-strategist.md) |
| 🔍 SEO Specialist | [`marketing/marketing-seo-specialist.md`](../marketing/marketing-seo-specialist.md) |
| 🔮 AI Citation Strategist | [`marketing/marketing-ai-citation-strategist.md`](../marketing/marketing-ai-citation-strategist.md) |
| 🏗️ AEO Foundations Architect | [`marketing/marketing-aeo-foundations.md`](../marketing/marketing-aeo-foundations.md) |

### E-commerce y tienda
_Tiendas WooCommerce, ventas en vivo, comercio transfronterizo y precios._ · Marca: **Tienda / clientes**

| Agente | Archivo |
|---|---|
| 🛍️ WordPress Shopping Cart Engineer | [`engineering/engineering-wordpress-shopping-cart.md`](../engineering/engineering-wordpress-shopping-cart.md) |
| 🌏 Cross-Border E-Commerce Specialist | [`marketing/marketing-cross-border-ecommerce.md`](../marketing/marketing-cross-border-ecommerce.md) |
| 🎙️ Livestream Commerce Coach | [`marketing/marketing-livestream-commerce-coach.md`](../marketing/marketing-livestream-commerce-coach.md) |
| 💰 Pricing Analyst | [`specialized/specialized-pricing-analyst.md`](../specialized/specialized-pricing-analyst.md) |
| 🛒 Retail Customer Returns | [`specialized/retail-customer-returns.md`](../specialized/retail-customer-returns.md) |

### Ventas y captación de clientes
_Ofertas y lead gen, prospección, propuestas, pipeline y cierre._ · Marca: **Todas las marcas**

| Agente | Archivo |
|---|---|
| 🧲 Offer & Lead Gen Strategist | [`sales/sales-offer-lead-gen-strategist.md`](../sales/sales-offer-lead-gen-strategist.md) |
| 🎯 Outbound Strategist | [`sales/sales-outbound-strategist.md`](../sales/sales-outbound-strategist.md) |
| 🏹 Proposal Strategist | [`sales/sales-proposal-strategist.md`](../sales/sales-proposal-strategist.md) |
| 🔍 Discovery Coach | [`sales/sales-discovery-coach.md`](../sales/sales-discovery-coach.md) |
| ♟️ Deal Strategist | [`sales/sales-deal-strategist.md`](../sales/sales-deal-strategist.md) |
| 📊 Pipeline Analyst | [`sales/sales-pipeline-analyst.md`](../sales/sales-pipeline-analyst.md) |
| 🗺️ Account Strategist | [`sales/sales-account-strategist.md`](../sales/sales-account-strategist.md) |
| 🏋️ Sales Coach | [`sales/sales-coach.md`](../sales/sales-coach.md) |

### Multiagente y automatizaciones
_Orquestar agentes, diseñar flujos, gobernanza de automatizaciones, MCP e IA conversacional (WhatsApp/voz)._ · Marca: **Atlas**

| Agente | Archivo |
|---|---|
| 🎛️ Agents Orchestrator | [`specialized/agents-orchestrator.md`](../specialized/agents-orchestrator.md) |
| 🕸️ Multi-Agent Systems Architect | [`engineering/engineering-multi-agent-systems-architect.md`](../engineering/engineering-multi-agent-systems-architect.md) |
| 🗺️ Workflow Architect | [`specialized/specialized-workflow-architect.md`](../specialized/specialized-workflow-architect.md) |
| ⚙️ Automation Governance Architect | [`specialized/automation-governance-architect.md`](../specialized/automation-governance-architect.md) |
| 🔌 MCP Builder | [`specialized/specialized-mcp-builder.md`](../specialized/specialized-mcp-builder.md) |
| 🤖 AI Engineer | [`engineering/engineering-ai-engineer.md`](../engineering/engineering-ai-engineer.md) |
| 🧬 Prompt Engineer | [`engineering/engineering-prompt-engineer.md`](../engineering/engineering-prompt-engineer.md) |
| 🎙️ Voice AI Integration Engineer | [`engineering/engineering-voice-ai-integration-engineer.md`](../engineering/engineering-voice-ai-integration-engineer.md) |

### Atención y éxito del cliente
_Soporte, éxito del cliente y respuestas para WhatsApp Business._ · Marca: **Todas las marcas**

| Agente | Archivo |
|---|---|
| 🎧 Customer Service | [`specialized/customer-service.md`](../specialized/customer-service.md) |
| 🌟 Customer Success Manager | [`specialized/customer-success-manager.md`](../specialized/customer-success-manager.md) |
| 💬 Support Responder | [`support/support-support-responder.md`](../support/support-support-responder.md) |

### Abovirtual (legal)
_Ingreso de clientes legales, revisión de documentos y cumplimiento._ · Marca: **Abovirtual Chile / México**

| Agente | Archivo |
|---|---|
| 📋 Legal Client Intake | [`specialized/legal-client-intake.md`](../specialized/legal-client-intake.md) |
| ⚖️ Legal Document Review | [`specialized/legal-document-review.md`](../specialized/legal-document-review.md) |
| ⚖️ Legal Compliance Checker | [`support/support-legal-compliance-checker.md`](../support/support-legal-compliance-checker.md) |

### Smart Property (inmobiliaria)
_Compra/venta de propiedades y documentos._ · Marca: **Smart Property**

| Agente | Archivo |
|---|---|
| 🏠 Real Estate Buyer & Seller | [`specialized/real-estate-buyer-seller.md`](../specialized/real-estate-buyer-seller.md) |
| 📄 Document Generator | [`specialized/specialized-document-generator.md`](../specialized/specialized-document-generator.md) |

### Dirección de la agencia
_Estrategia, jefe de gabinete, tendencias y reportes._ · Marca: **Agencia**

| Agente | Archivo |
|---|---|
| ♟️ Business Strategist | [`specialized/business-strategist.md`](../specialized/business-strategist.md) |
| 🧭 Chief of Staff | [`specialized/specialized-chief-of-staff.md`](../specialized/specialized-chief-of-staff.md) |
| 🔭 Trend Researcher | [`product/product-trend-researcher.md`](../product/product-trend-researcher.md) |
| 📊 Analytics Reporter | [`support/support-analytics-reporter.md`](../support/support-analytics-reporter.md) |
| 📝 Executive Summary Generator | [`support/support-executive-summary-generator.md`](../support/support-executive-summary-generator.md) |

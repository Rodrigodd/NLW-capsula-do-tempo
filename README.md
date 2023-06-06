# Capsula do Tempo

<p float="left" align="middle">
  <img alt="Preview" align="middle" src="preview.png" />
</p>


Projeto desenvolvido no evento NLW Spacetime da
[Rocketseat](https://app.rocketseat.com.br/). Consiste em um projeto de uma
capsula do tempo, onde usuários podem se autenticar usando sua conta GitHub,
pela tecnologia OAuth, e postar mensagens para serem lidas no futuro.

O projeto consiste em três partes:

- server: a backend do proejeto, desenvolvida usando Node.js, Fastify e Prisma.
  Ele é responsável por receber as requesições dos clientes, e salva-las no
  banco de dados.

- web: a frontend web do projeto, desenvolvida usando React.js, Next.js e
  Tailwind CSS. O usuário pode visualizar mensagens públicas, se autehnticar e
  postar mensagens.

- mobile: frontend mobile do projeto, desenvolvida usando React Native e Expo.
  O usuário pode visualizar mensagens públicas, se autehnticar e postar
  mensagens.

# Executando o Projeto

Inicie o server, em seguida executa o web ou mobile.

## Server

Acesse o Server

```bash
cd server
```

Instale as dependências:

```bash
npm install
```

Nas configurações do GitHub, crie um OAuth App e informe as variáveis de
ambiente no arquivo `.env`:

```bash
GITHUB_CLIENT_ID=""
GITHUB_CLIENT_SECRET=""
```

Use o Prisma para criar as tabelas

```bash
npx prisma migrate dev
```

Inicie o Serviço:

```bash
npm run dev
```

## Web

Com o Server Iniciado, acesse o projeto Web:

```bash
cd .. && cd web
```

Instale as dependências:

```bash
npm install
```

Informe a variável de ambiente do GitHub client id (o mesmo que o do servidor)
no arquivo `.env.local`:

```bash
NEXT_PUBLIC_GITHUB_CLIENT_ID=
```

```bash
npm run dev
```

Acesse [http://localhost:3000](http://localhost:3000) para acessar a aplicação web.


# Tecnologias

- [React](https://reactjs.org/)
- [NodeJS](https://nodejs.org/en/)
- [Typescript](https://www.typescriptlang.org/)
- [Axios](https://axios-http.com/ptbr/docs/intro)
- [Fastify](https://www.fastify.io/)
- [Prisma](https://www.prisma.io/)
- [Zod](https://zod.dev/)
- [NextJS](https://nextjs.org/)
- [TailwindCSS](https://tailwindcss.com/)
- [DayJS](https://day.js.org/)
- [JS Cookie](https://github.com/js-cookie/js-cookie)
- [JWT Decode](https://github.com/auth0/jwt-decode#readme)
- [Expo](https://expo.dev/)
- [React Native](https://reactnative.dev/)

## Fluxos Funcionais

### Recuperação de Senha

O sistema disponibiliza um fluxo seguro de recuperação de senha para usuários que perderam ou esqueceram suas credenciais de acesso.

#### Fluxo

1. O usuário seleciona a opção **"Esqueci minha senha"**.
2. Informa o e-mail ou telefone cadastrado.
3. O sistema gera um código temporário de recuperação.
4. O código é enviado ao usuário.
5. O usuário informa o código recebido.
6. O sistema valida o código.
7. Caso seja válido, o usuário pode definir uma nova senha.
8. A nova senha é armazenada no sistema.
9. O usuário pode realizar login utilizando a nova credencial.

#### Regras de Negócio

- O código possui tempo limitado de validade.
- Códigos expirados são rejeitados.
- Apenas códigos válidos permitem a alteração da senha.
- Após a redefinição da senha, o código é invalidado automaticamente.
- A nova senha deve atender aos critérios mínimos de segurança definidos pela plataforma.

---

### Pesquisa de Produtos

O sistema permite que os usuários localizem rapidamente produtos disponíveis através de uma ferramenta de pesquisa integrada ao cardápio.

#### Fluxo

1. O usuário acessa o campo de pesquisa.
2. Digita o nome completo ou parcial do produto desejado.
3. O sistema consulta os produtos disponíveis.
4. Os resultados compatíveis são exibidos em tempo real.
5. O usuário pode acessar diretamente o produto encontrado.

#### Regras de Negócio

- A pesquisa considera apenas produtos ativos.
- A busca suporta correspondências parciais.
- Produtos podem ser filtrados por categoria.
- Produtos indisponíveis podem ser ocultados ou sinalizados visualmente.

---

### Gerenciamento de Endereços

O sistema permite o cadastro e gerenciamento de múltiplos endereços de entrega.

#### Fluxo de Cadastro

1. O usuário acessa a área de endereços.
2. Seleciona a opção **"Adicionar Endereço"**.
3. Informa CEP e demais dados necessários.
4. O sistema valida as informações.
5. O endereço é salvo na conta do usuário.

#### Regras de Negócio

- Um usuário pode possuir múltiplos endereços cadastrados.
- Deve existir pelo menos um endereço válido para realização de pedidos.
- Apenas um endereço pode ser definido como padrão.
- Ao definir um novo endereço como padrão, o endereço anterior perde automaticamente essa condição.
- Endereços podem ser editados a qualquer momento.
- Endereços podem ser removidos pelo usuário.
- O sistema impede que todos os endereços sejam removidos caso isso deixe o usuário sem endereço válido para entrega.

#### Seleção de Endereço no Checkout

1. O sistema seleciona automaticamente o endereço padrão.
2. O usuário pode alterar para qualquer outro endereço cadastrado.
3. O endereço escolhido é vinculado ao pedido.
4. Após a confirmação do pedido, o endereço utilizado é armazenado no histórico da compra.

---

### Gerenciamento de Cartões

O sistema permite o armazenamento seguro de múltiplos cartões para utilização em pagamentos futuros.

#### Fluxo de Cadastro

1. O usuário acessa a área de métodos de pagamento.
2. Seleciona **"Adicionar Cartão"**.
3. Os dados são enviados ao gateway de pagamento.
4. O gateway realiza a tokenização das informações.
5. O sistema armazena apenas o token e informações não sensíveis do cartão.
6. O cartão fica disponível para futuras compras.

#### Regras de Negócio

- Um usuário pode possuir múltiplos cartões cadastrados.
- Dados sensíveis não são armazenados diretamente pela plataforma.
- Apenas tokens fornecidos pelo gateway são persistidos.
- Cartões podem ser removidos pelo usuário.
- Um cartão pode ser definido como método de pagamento preferencial.

#### Seleção de Cartão no Checkout

1. O sistema exibe todos os cartões cadastrados.
2. O usuário seleciona o cartão desejado.
3. Opcionalmente, pode cadastrar um novo cartão.
4. O pagamento é processado pelo gateway.
5. O resultado da transação é retornado ao sistema.

#### Regras de Negócio

- Apenas cartões válidos podem ser utilizados.
- Cartões expirados não podem ser selecionados.
- O usuário pode escolher qualquer cartão cadastrado durante a compra.
- O sistema pode sugerir automaticamente o cartão definido como preferencial.

---

### Carrinho de Compras

O carrinho é responsável por consolidar os produtos selecionados pelo usuário antes da finalização do pedido.

#### Fluxo

1. O usuário adiciona produtos ao carrinho.
2. O sistema cria ou atualiza automaticamente o pedido em andamento.
3. O usuário pode alterar quantidades ou remover itens.
4. O valor total é recalculado automaticamente.
5. O usuário segue para a etapa de checkout.

#### Regras de Negócio

- Não é permitido adicionar quantidades superiores ao estoque disponível.
- O subtotal de cada item é calculado automaticamente.
- O valor total do pedido é atualizado em tempo real.
- Produtos removidos deixam de compor o cálculo final do pedido.

---

### Acompanhamento de Pedidos

O sistema permite que os clientes acompanhem o andamento do pedido em tempo real.

#### Status Disponíveis

- Criado
- Aguardando Pagamento
- Pago
- Em Produção
- Em Separação
- Saiu para Entrega
- Entregue
- Cancelado

#### Fluxo

1. O pedido é criado.
2. O pagamento é confirmado.
3. A cozinha recebe a ordem de produção.
4. O pedido é preparado.
5. O entregador recebe a rota.
6. O cliente acompanha a localização da entrega.
7. A entrega é confirmada mediante código de validação.
8. O pedido é finalizado.

#### Regras de Negócio

- Cada alteração de status é registrada no histórico do pedido.
- O cliente recebe notificações durante o processo.
- Apenas usuários autorizados podem alterar determinados status.
- O pedido somente pode ser concluído após a confirmação da entrega.

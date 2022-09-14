<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contrato.aspx.cs" Inherits="Projeto_Contratos.Cadastros_info.Contrato" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="../TelaBusca/Estilo_CAD.css" />
    <div class="container-principal2" style="margin-top:20px; margin-bottom:50px">
        <div id="contrato" style="margin-bottom:50px">
            <header>Contrato de aluguel</header>
            <article style="text-align:justify">
                <asp:Label runat="server" ID="lbl_NOMELOCADOR" Text="(NOME)"></asp:Label>, (CPF), (IDENTIDADE) (ENDEREÇO), doravante denominado LOCADOR; (NOME), (CPF), (IDENTIDADE) (ENDEREÇO), doravante denominado LOCATÁRIO, celebram o presente contrato de locação residencial, com as cláusulas e condições seguintes: 
                <br />
                1)     O LOCADOR cede para locação residencial ao LOCATÁRIO, o imóvel situado (ENDEREÇO DO IMÓVEL).
                <br />
                2)     A locação destina-se ao uso exclusivo como residência e domicilio do LOCATÁRIO.
                <br />
                3)     O prazo de locação é de (TEMPO DE LOCAÇÃO), iniciando-se em (DATA) e terminando em (DATA), limite de tempo em que o imóvel objeto do presente deverá ser restituído independentemente de qualquer notificação ou interpelação sob pena de caracterizar infração contratual.
                <br />
                4)     O aluguel mensal será de (R$) e deverá ser pago até a data de seu vencimento, todo dia (DIA) do mês seguinte ao vencido, no local do endereço do LOCADOR ou outro que o mesma venha a designar.
                <br />
                4.1) A impontualidade acarretará juros moratórios na base de 1% (um por cento) ao mês calculado sobre o valor do aluguel. O atraso superior a 30 (trinta) dias implicará em correção monetária do valor do aluguel e encargos de cobrança correspondentes a 10% (dez por cento) do valor assim corrigido.
                <br />
                4.2) O pagamento de qualquer dos aluguéis não implica em renúncia do direito de cobrança de eventuais diferenças de aluguéis, de encargos ou impostos que oportunamente não tiverem sidos lançados nos respectivos recibos.
                <br />
                5)     O aluguel será reajustado anualmente pela variação do ...... (ÍNDICE, exemplo: IGP-M, INPC-IBGE, etc.). Entretanto, se em virtude de lei subsequente vier a ser admitida a correção e periodicidade inferior a prevista na legislação vigente à época de sua celebração, que é anual, concordam as partes desde já e em caráter irrevogável que a correção do aluguel e o seu indexador passará automaticamente a ser feito no menor prazo que for permitido pela lei posterior e pelo maior índice vigente dentre os permitidos pelo Governo Federal e que venha a refletir a variação do período.
                <br />
                6)     Havendo prorrogação tácita ou expressa do presente contrato o mesmo será reajustado a preço de mercado sem qualquer relação com o patamar aqui pactuado a ser estabelecido pelo LOCADOR, que poderá ainda estipular, de comum acordo com o LOCATÁRIO, o índice de reajuste e periodicidade.
                <br />
                7)     Nas cobranças judiciais e extrajudiciais de alugueis em atraso os mesmos serão acrescidos de juros de mora, atualização monetária e honorários advocatícios, na base de 20% ( vinte por cento ) sendo que qualquer recebimento feitos pela LOCADOR fora dos prazos e condições convencionais neste contrato, será havido como mera tolerância e não induzirá novação bem como resgate de recibos posteriores não significará quitação de aluguéis e outras obrigações contratuais deixadas de quitar nas épocas certas.
                <br />
                8)     O imóvel da presente locação destina-se ao uso exclusivo como residência e domicilio do LOCATÁRIO, conforme cláusula 2, não sendo permitida a transferência, sublocação, cessão ou empréstimo no todo ou em parte, sem a prévia e expressa autorização do LOCADOR.
                <br />
                9)     Além do aluguel são de responsabilidade do LOCATÁRIO as despesas com consumo de luz, água, esgoto, seguro contra incêndio, imposto predial e todas as demais taxas ou impostos, tributos municipais e encargos da locação, que venham a incidir sobre o imóvel, inclusive taxa de condomínio, que deverão ser pagas diretamente pela mesma, o qual ficará obrigada a apresentar os comprovantes de quitação juntamente com o pagamento do aluguel.
                <br />
                10) O LOCATÁRIO declara neste ato tomar conhecimento da existência de regras estabelecidas na CONVENÇÃO DE CONDOMÍNIOS e compromete-se a respeitá-las e cumpri-las, juntamente com seus familiares e prepostos, sob pena de rescisão contratual.
                <br />
                11) Encerrada a locação a entrega das chaves só será processada mediante exibição ao LOCADOR, dos comprovantes de quitação das despesas e encargos da locação referidos nas cláusulas anteriores, inclusive corte final de luz.
                <br />
                12) Fica facultado ao LOCADOR ou ao seu representante legal vistoriar o imóvel sempre que julgar necessário.
                <br />
                13) O LOCATÁRIO se obriga, sob pena de cometer infração contratual, a comunicar por escrito ao LOCADOR, com antecipação mínima de 30 (trinta) dias, a sua intenção de devolver o imóvel antes do prazo aqui previsto.
                <br />
                14) O LOCATÁRIO assume o compromisso de solicitar ao LOCADOR uma vistoria 30 (trinta) dias antes de desocupar o imóvel para ser constatado o estado de conservação do mesmo.
                <br />
                15) Quaisquer modificações no imóvel locadas só poderão ser feitas com expressa autorização do LOCADOR. Aderem ao mesmo as benfeitorias sejam elas úteis, necessárias ou voluntárias independente de sua natureza, não cabendo direito de indenização, retenção, compensação ou reembolso.
                <br />
                16) Se no curso da locação vier a ocorrer incêndio ou danos no prédio que demandem obras que impeçam o seu uso normal por mais de 30 (trinta) dias, falência ou insolvência do LOCATÁRIO, bem como desapropriação do imóvel, ficará rescindida de pleno direito a relação locatícia, sem qualquer direito de indenização ou retenção do objeto do presente contrato.
                <br />
                17) O LOCATÁRIO autoriza ao LOCADOR desde já, a proceder a sua citação inicial, interpelação, intimação, notificação, ou qualquer outro ato de comunicação processual mediante comunicação por e-mail, whatsapp ou outro formato eletrônico, afora as demais formas previstas em lei.
                <br />
                18) Fica convencionado que a parte que infringir o presente contrato em qualquer dos seus termos, se sujeita ao pagamento em benefício da outra, da multa contratual correspondente a 1 (uma) vez o valor do aluguel vigente à época da infração, tantas vezes forem as infrações praticadas, sem prejuízo da resolução contratual e demais comunicações previstas neste instrumento.
                <br />
                19) Se o LOCATÁRIO vier a usar da faculdade que lhe confere o contido no artigo 4º da Lei n º 8.245/1991 e devolver o imóvel antes do vencimento do prazo ajustado, pagará a multa compensatória equivalente a 02 (duas) vezes o valor do aluguel vigente, reduzido proporcionalmente ao tempo do contrato já cumprido.
                <br />
                20) Salvo declaração escrita do LOCADOR, quaisquer tolerância ou concessões por ela feita não implicam em renúncia de direito ou em alteração contratual, não podendo ser invocada pelo LOCATÁRIO como procedente para se furtar ao cumprimento do contrato.
                <br />
                21) Permanecendo o LOCATÁRIO no imóvel após o prazo de desocupação voluntária nos casos de denúncia condicionada, pagará ele o aluguel pena que vier a ser arbitrado na notificação premonitória na forma de que dispõe o artigo 575 do Novo Código Civil Brasileiro, o mesmo ocorrendo no caso de mútuo acordo nos termos do artigo 9, inciso I da Lei n º 8.245/1991, quando a desocupação não se verificar na data convencionada.
                <br />
                22) No caso do imóvel ser posto à venda, o LOCATÁRIO declara que não possui interesse em sua aquisição, renunciando expressamente ao eventual direito de preferência e autoriza desde já, a visita de interessados, em horários previamente convencionados.
                <br />
                23) O LOCATÁRIO declara, para todos os fins e efeitos de direito, que recebe o imóvel locado em condições plenas de uso, em perfeito estado de conservação, higiene e limpeza, obrigando-se e comprometendo-se a devolvê-lo em iguais condições, independente de qualquer aviso ou notificação prévia, e qualquer que seja o motivo da devolução, sob pena de incorrer nas cominações previstas neste contrato ou estipuladas em lei, além da obrigação de indenizar por danos ou prejuízos decorrentes da inobservância desta obrigação, salvo as deteriorações decorrentes de uso normal do imóvel.
                <br />
                24) Assina também o presente contrato como FIADOR e PRINCIPAL PAGADOR, solidariamente com o LOCATÁRIO, por todas as obrigações e responsabilidades constantes deste acordo com disposições dos artigos 827 e seguintes do Novo Código Civil Brasileiro, inclusive aluguéis vencidos, danos ao imóvel e demais encargos decorrentes da locação, (NOME) (CPF) (IDENTIDADE) (ENDEREÇO), consoante o artigo 818 do Novo Código Civil Brasileiro, declarando expressamente, desistir da faculdade estabelecida nos artigos 835 e 838 e renunciando  ao benefício de ordem do artigo 827 do mesmo código, perdurando sua responsabilidade até a entrega das chaves, inclusive em caso de prorrogação.
                <br />
                25) Em caso de ausência, interdição, recuperação judicial, falência ou insolvência do fiador, declaradas judicialmente, suas obrigações se transferem aos seus herdeiros e/ou sucessores e o LOCATÁRIO se obriga, dentro de 30 (trinta) dias a dar substituto idôneo, a juízo do LOCADOR, ficando aquele em mora e sujeito à multa contratual e despejo, se não o fizer nesses dias de mera tolerância.
                <br />
                26) Elegem as partes o foro do domicílio do LOCADOR, para dirimir quaisquer dúvidas oriundas do presente contrato, renunciando a qualquer outro por mais privilegiado que seja. 
                <br />
                E por estarem LOCADOR e LOCATÁRIO de pleno acordo com o disposto neste instrumento particular, assinam-no na presença das duas testemunhas abaixo, em ....... vias de igual teor e forma, destinando-se uma via para cada uma das partes. 
                <br />
                <br />
                <br />
                Local e Data: 
                <br />
                <br />
                LOCADOR (nome)
                <br />
                LOCATÁRIO (nome)
                <br />
            </article>
            <footer style="text-align:center" >
                <asp:Button runat="server" Text="imprimir" ID="btn_imprimir" CssClass="buttonT" style="align-content:center" />
            </footer>
        </div>
    </div>
</asp:Content>

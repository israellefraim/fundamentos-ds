# Software para enviar email pelo Python

import smtplib
from email.message import Message


def enviar_email():
    corpo_email = """
    <p>Parágrafo1</p>
    <p>Parágrafo2</p>
    """

    msg = Message()
    msg['Subject'] = "Assunto"
    msg['From'] = 'Remetente'  # Inserir email do remetente
    msg['To'] = 'Destinatário'  # Inserir email do destinatário
    password = 'Senha'  # Inserir 'Senha de app'. Procure na internet como gerar essa senha pelo gmail
    msg.add_header('Content-Type', 'text/html')
    msg.set_payload(corpo_email)

    s = smtplib.SMTP('smtp.gmail.com: 587')
    s.starttls()
    # Login Credentials for sending the mail
    s.login(msg['From'], password)
    s.sendmail(msg['From'], [msg['To']], msg.as_string().encode('utf-8'))
    print(f'\033[1;95mEmail enviado para {msg['To']}\033[m')  # Aviso de quando o email for enviado


enviar_email()

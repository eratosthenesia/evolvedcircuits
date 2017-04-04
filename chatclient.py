import sys
import socket
import select

def chat_client():
  if len(sys.argv) < 3:
    print('Usage: python3 chatclient.py hostname port')
    sys.exit()
  host = sys.argv[1]
  port = int(sys.argv[2])
  s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
  s.settimeout(2)
  try:
    s.connect((host, port))
  except:
    print('Cannot connect')
    sys.exit()
  print('Connected to remote host.')
  sys.stdout.write('[Self] ')
  sys.stdout.flush()
  while True:
    socket_list = [sys.stdin, s]
    ready_to_read, ready_to_write, in_error = \
      select.select(socket_list, [], [])
    for sock in ready_to_read:
      if sock == s:
        data = sock.recv(4096)
        if not data:
          print('Not connected.')
          sys.exit()
        else:
          sys.stdout.write(data)
          sys.stdout.write('[Self] ')
          sys.stdout.flush()
      else:
        msg = sys.stdin.readline()
        s.send(msg)
        sys.stdout.write('[Self] ')
        sys.stdout.flush()

if __name__ == '__main__':
  sys.exit(chat_client())

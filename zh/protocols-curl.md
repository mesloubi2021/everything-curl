# The protocols curl supports

curl supports about 22 protocols. We say "about" because it depends on how you
count and what you consider to be distinctly different protocols.

## DICT

DICT is a dictionary network protocol, it allows clients to ask dictionary
servers about a meaning or explanation for words. See RFC 2229. Dict servers
and clients use TCP port 2628.

## FILE

FILE is not actually a "network" protocol. It is a URL scheme that allows you
to tell curl to get a file from the local file system instead of getting it
over the network from a remote server. See RFC 1738.

## FTP

FTP stands for File Transfer Protocol and is an old (originates in the early
1970s) way to transfer files back and forth between a client and a server. See
RFC 959. It has been extended greatly over the years. FTP servers and clients
use TCP port 21 plus one more port, though the second one is usually
dynamically established during communication.

See the external page [FTP vs
HTTP](https://daniel.haxx.se/docs/ftp-vs-http.html) for how it differs to
HTTP.

## FTPS

FTPS stands for Secure File Transfer Protocol. It follows the tradition of
appending an 'S' to the protocol name to signify that the protocol is done
like normal FTP but with an added SSL/TLS security layer. See RFC 4217.

This protocol is very problematic to use through firewalls and other network
equipment.

## GOPHER

Designed for "distributing, searching, and retrieving documents over the
Internet", Gopher is somewhat of the grand father to HTTP as HTTP has mostly
taken over completely for the same use cases. See RFC 1436. Gopher servers and
clients use TCP port 70.

## HTTP

The Hypertext Transfer Protocol, HTTP, is the most widely used protocol for
transferring data on the web and over the Internet. See RFC 7230 for HTTP/1.1
and RFC 7540 for HTTP/2, the successor. HTTP servers and clients use TCP port
80.

## HTTPS

Secure HTTP is HTTP done over an SSL/TLS connection. See RFC 2818. HTTPS
servers and clients use TCP port 443.

## IMAP

The Internet Message Access Protocol, IMAP, is a protocol for accessing,
controlling and "reading" email. See RFC 3501. IMAP servers and clients use
TCP port 143.

## IMAPS

Secure IMAP is IMAP done over an SSL/TLS connection. Such connections usually
start out as a "normal" IMAP connection that is then upgraded to IMAPS using
the `STARTTLS` command.

## LDAP

The Lightweight Directory Access Protocol, LDAP, is a protocol for accessing
and maintaining distributed directory information. Basically a database
lookup. See RFC 4511. LDAP servers and clients use TCP port 389.

## LDAPS

Secure LDAP is LDAP done over an SSL/TLS connection.

## POP3

The Post Office Protocol version 3 (POP3) is a protocol for retrieving email
from a server. See RFC 1939. POP3 servers and clients use TCP port 110.

## POP3S

Secure POP3 is POP3 done over an SSL/TLS connection. Such connections usually
start out as a "normal" POP3 connection that is then upgraded to POP3S using
the `STARTTLS` command.

## RTMP

The Real-Time Messaging Protocol (RTMP) is a protocol for streaming audio,
video and data. RTMP servers and clients use TCP port 1935.

## RTSP

The Real Time Streaming Protocol (RTSP) is a network control protocol to
control streaming media servers. See RFC 2326. RTSP servers and clients use
TCP and UDP port 554.

## SCP

The Secure Copy (SCP) protocol is designed to copy files to and from a remote
SSH server. SCP servers and clients use TCP port 22.

## SFTP

The SSH File Transfer Protocol (SFTP) that provides file access, file
transfer, and file management over a reliable data stream. SFTP servers and
clients use TCP port 22.

## SMB

The Server Message Block (SMB) protocol is also known as CIFS. It is a an
application-layer network protocol mainly used for providing shared access to
files, printers, and serial ports and miscellaneous communications between
nodes on a network. SMB servers and clients use TCP port 485.

## SMTP

The Simple Mail Transfer Protocol (SMTP) is a protocol for email
transmission. See RFC 821. SMTP servers and clients use TCP port 25.

## SMTPS

Secure SMTP is SMTP done over an SSL/TLS connection. Such connections usually
start out as a "normal" SMTP connection that is then upgraded to SMTPS using
the `STARTTLS` command.

## TELNET

TELNET is an application layer protocol used over networks to provide a
bidirectional interactive text-oriented communication facility using a virtual
terminal connection. See RFC 854. TELNET servers and clients use TCP port 23.

## TFTP

The Trivial File Transfer Protocol (TFTP) is a protocol for doing simple file
transfers over UDP to get a file from or put a file onto a remote host. TFTP
servers and clients use UDP port 69.

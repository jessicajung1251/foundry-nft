## Foundry NFT
1. BasicNft: we are creating an IPFS hosted NFT of a pug 
2. MoodNft: we are creating an SVG NFT hosted on-chain

- Worked with Base64, abi.encode(),abi.decode(),abi.encodePacked(), bytes()
- Encoded/decoded imagge URIs and token URIs
  - Sublesson: 
    - learned the difference between abi.encode vs abi.encodePacked
    - For our MoodNft, with abi.encodePacked we are combining two string and encoding them to their packed bytes implementation and then type casting them back from bytes to string and that is how we can concatenate them
- 




example svg:
data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB3aWR0aD0iNTAwIiBoZWlnaHQ9IjUwMCI+PHRleHQgeD0iMCIgeT0iMTUiIGZpbGw9ImJsYWNrIj5IaSEgWW91ciBicm93c2VyIGRlY29kZWQgdGhpczwvdGV4dD48L3N2Zz4=

data:application/json;base64,eyJuYW1lIjogIk1vb2QgTmZ0IiwgImRlc2NyaXB0aW9uIjogIkFuIE5GVCB0aGF0IHJlZmxlY3RzIHRoZSBvd25lcnMgbW9vZC4iLCAiYXR0cmlidXRlcyI6W3sidHJhaXRfdHlwZSI6ICJtb29kaW5lc3MiLCAidmFsdWUiOiAxMDB9XSwgImltYWdlIjoiZGF0YTppbWFnZS9zdmcreG1sO2Jhc2U2NCxQRDk0Yld3Z2RtVnljMmx2YmowaU1TNHdJaUJ6ZEdGdVpHRnNiMjVsUFNKdWJ5SS9Qanh6ZG1jZ2QybGtkR2c5SWpFd01qUndlQ0lnYUdWcFoyaDBQU0l4TURJMGNIZ2lJSFpwWlhkQ2IzZzlJakFnTUNBeE1ESTBJREV3TWpRaUlIaHRiRzV6UFNKb2RIUndPaTh2ZDNkM0xuY3pMbTl5Wnk4eU1EQXdMM04yWnlJK1BIQmhkR2dnWm1sc2JEMGlJek16TXlJZ1pEMGlUVFV4TWlBMk5FTXlOalF1TmlBMk5DQTJOQ0F5TmpRdU5pQTJOQ0ExTVRKek1qQXdMallnTkRRNElEUTBPQ0EwTkRnZ05EUTRMVEl3TUM0MklEUTBPQzAwTkRoVE56VTVMalFnTmpRZ05URXlJRFkwZW0wd0lEZ3lNR010TWpBMUxqUWdNQzB6TnpJdE1UWTJMall0TXpjeUxUTTNNbk14TmpZdU5pMHpOeklnTXpjeUxUTTNNaUF6TnpJZ01UWTJMallnTXpjeUlETTNNaTB4TmpZdU5pQXpOekl0TXpjeUlETTNNbm9pTHo0OGNHRjBhQ0JtYVd4c1BTSWpSVFpGTmtVMklpQmtQU0pOTlRFeUlERTBNR010TWpBMUxqUWdNQzB6TnpJZ01UWTJMall0TXpjeUlETTNNbk14TmpZdU5pQXpOeklnTXpjeUlETTNNaUF6TnpJdE1UWTJMallnTXpjeUxUTTNNaTB4TmpZdU5pMHpOekl0TXpjeUxUTTNNbnBOTWpnNElEUXlNV0UwT0M0d01TQTBPQzR3TVNBd0lEQWdNU0E1TmlBd0lEUTRMakF4SURRNExqQXhJREFnTUNBeExUazJJREI2YlRNM05pQXlOekpvTFRRNExqRmpMVFF1TWlBd0xUY3VPQzB6TGpJdE9DNHhMVGN1TkVNMk1EUWdOak0yTGpFZ05UWXlMalVnTlRrM0lEVXhNaUExT1RkekxUa3lMakVnTXprdU1TMDVOUzQ0SURnNExqWmpMUzR6SURRdU1pMHpMamtnTnk0MExUZ3VNU0EzTGpSSU16WXdZVGdnT0NBd0lEQWdNUzA0TFRndU5HTTBMalF0T0RRdU15QTNOQzQxTFRFMU1TNDJJREUyTUMweE5URXVObk14TlRVdU5pQTJOeTR6SURFMk1DQXhOVEV1Tm1FNElEZ2dNQ0F3SURFdE9DQTRMalI2YlRJMExUSXlOR0UwT0M0d01TQTBPQzR3TVNBd0lEQWdNU0F3TFRrMklEUTRMakF4SURRNExqQXhJREFnTUNBeElEQWdPVFo2SWk4K1BIQmhkR2dnWm1sc2JEMGlJek16TXlJZ1pEMGlUVEk0T0NBME1qRmhORGdnTkRnZ01DQXhJREFnT1RZZ01DQTBPQ0EwT0NBd0lERWdNQzA1TmlBd2VtMHlNalFnTVRFeVl5MDROUzQxSURBdE1UVTFMallnTmpjdU15MHhOakFnTVRVeExqWmhPQ0E0SURBZ01DQXdJRGdnT0M0MGFEUTRMakZqTkM0eUlEQWdOeTQ0TFRNdU1pQTRMakV0Tnk0MElETXVOeTAwT1M0MUlEUTFMak10T0RndU5pQTVOUzQ0TFRnNExqWnpPVElnTXprdU1TQTVOUzQ0SURnNExqWmpMak1nTkM0eUlETXVPU0EzTGpRZ09DNHhJRGN1TkVnMk5qUmhPQ0E0SURBZ01DQXdJRGd0T0M0MFF6WTJOeTQySURZd01DNHpJRFU1Tnk0MUlEVXpNeUExTVRJZ05UTXplbTB4TWpndE1URXlZVFE0SURRNElEQWdNU0F3SURrMklEQWdORGdnTkRnZ01DQXhJREF0T1RZZ01Ib2lMejQ4TDNOMlp6NEsifQ==

data:application/json;base64,eyJuYW1lIjoiTW9vZCBOZnQiLCAiZGVzY3JpcHRpb24iOiJBbiBORlQgdGhhdCByZWZsZWN0cyB0aGUgbW9vZCBvZiB0aGUgb3duZXIsIDEwMCUgb24gQ2hhaW4hIiwgImF0dHJpYnV0ZXMiOiBbeyJ0cmFpdF90eXBlIjogIm1vb2RpbmVzcyIsICJ2YWx1ZSI6IDEwMH1dLCAiaW1hZ2UiOiJkYXRhOmltYWdlL3N2Zyt4bWw7YmFzZTY0LFBEOTRiV3dnZG1WeWMybHZiajBpTVM0d0lpQnpkR0Z1WkdGc2IyNWxQU0p1YnlJL1BnbzhjM1puSUhkcFpIUm9QU0l4TURJMGNIZ2lJR2hsYVdkb2REMGlNVEF5TkhCNElpQjJhV1YzUW05NFBTSXdJREFnTVRBeU5DQXhNREkwSWlCNGJXeHVjejBpYUhSMGNEb3ZMM2QzZHk1M015NXZjbWN2TWpBd01DOXpkbWNpUGdvZ0lEeHdZWFJvSUdacGJHdzlJaU16TXpNaUlHUTlJazAxTVRJZ05qUkRNalkwTGpZZ05qUWdOalFnTWpZMExqWWdOalFnTlRFeWN6SXdNQzQySURRME9DQTBORGdnTkRRNElEUTBPQzB5TURBdU5pQTBORGd0TkRRNFV6YzFPUzQwSURZMElEVXhNaUEyTkhwdE1DQTRNakJqTFRJd05TNDBJREF0TXpjeUxURTJOaTQyTFRNM01pMHpOekp6TVRZMkxqWXRNemN5SURNM01pMHpOeklnTXpjeUlERTJOaTQySURNM01pQXpOekl0TVRZMkxqWWdNemN5TFRNM01pQXpOeko2SWk4K0NpQWdQSEJoZEdnZ1ptbHNiRDBpSTBVMlJUWkZOaUlnWkQwaVRUVXhNaUF4TkRCakxUSXdOUzQwSURBdE16Y3lJREUyTmk0MkxUTTNNaUF6TnpKek1UWTJMallnTXpjeUlETTNNaUF6TnpJZ016Y3lMVEUyTmk0MklETTNNaTB6TnpJdE1UWTJMall0TXpjeUxUTTNNaTB6TnpKNlRUSTRPQ0EwTWpGaE5EZ3VNREVnTkRndU1ERWdNQ0F3SURFZ09UWWdNQ0EwT0M0d01TQTBPQzR3TVNBd0lEQWdNUzA1TmlBd2VtMHpOellnTWpjeWFDMDBPQzR4WXkwMExqSWdNQzAzTGpndE15NHlMVGd1TVMwM0xqUkROakEwSURZek5pNHhJRFUyTWk0MUlEVTVOeUExTVRJZ05UazNjeTA1TWk0eElETTVMakV0T1RVdU9DQTRPQzQyWXkwdU15QTBMakl0TXk0NUlEY3VOQzA0TGpFZ055NDBTRE0yTUdFNElEZ2dNQ0F3SURFdE9DMDRMalJqTkM0MExUZzBMak1nTnpRdU5TMHhOVEV1TmlBeE5qQXRNVFV4TGpaek1UVTFMallnTmpjdU15QXhOakFnTVRVeExqWmhPQ0E0SURBZ01DQXhMVGdnT0M0MGVtMHlOQzB5TWpSaE5EZ3VNREVnTkRndU1ERWdNQ0F3SURFZ01DMDVOaUEwT0M0d01TQTBPQzR3TVNBd0lEQWdNU0F3SURrMmVpSXZQZ29nSUR4d1lYUm9JR1pwYkd3OUlpTXpNek1pSUdROUlrMHlPRGdnTkRJeFlUUTRJRFE0SURBZ01TQXdJRGsySURBZ05EZ2dORGdnTUNBeElEQXRPVFlnTUhwdE1qSTBJREV4TW1NdE9EVXVOU0F3TFRFMU5TNDJJRFkzTGpNdE1UWXdJREUxTVM0MllUZ2dPQ0F3SURBZ01DQTRJRGd1TkdnME9DNHhZelF1TWlBd0lEY3VPQzB6TGpJZ09DNHhMVGN1TkNBekxqY3RORGt1TlNBME5TNHpMVGc0TGpZZ09UVXVPQzA0T0M0MmN6a3lJRE01TGpFZ09UVXVPQ0E0T0M0Mll5NHpJRFF1TWlBekxqa2dOeTQwSURndU1TQTNMalJJTmpZMFlUZ2dPQ0F3SURBZ01DQTRMVGd1TkVNMk5qY3VOaUEyTURBdU15QTFPVGN1TlNBMU16TWdOVEV5SURVek0zcHRNVEk0TFRFeE1tRTBPQ0EwT0NBd0lERWdNQ0E1TmlBd0lEUTRJRFE0SURBZ01TQXdMVGsySURCNklpOCtDand2YzNablBnbz0ifQ=

happy svg
data:image/svg+xml;base64, PHN2ZyB2aWV3Qm94PSIwIDAgMjAwIDIwMCIgd2lkdGg9IjQwMCIgIGhlaWdodD0iNDAwIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPgogIDxjaXJjbGUgY3g9IjEwMCIgY3k9IjEwMCIgZmlsbD0ieWVsbG93IiByPSI3OCIgc3Ryb2tlPSJibGFjayIgc3Ryb2tlLXdpZHRoPSIzIi8+CiAgPGcgY2xhc3M9ImV5ZXMiPjxjaXJjbGUgY3g9IjYxIiBjeT0iODIiIHI9IjEyIi8+PGNpcmNsZSBjeD0iMTI3IiBjeT0iODIiIHI9IjEyIi8+PC9nPgogIDxwYXRoIGQ9Im0xMzYuODEgMTE2LjUzYy42OSAyNi4xNy02NC4xMSA0Mi04MS41Mi0uNzMiIHN0eWxlPSJmaWxsOm5vbmU7IHN0cm9rZTogYmxhY2s7IHN0cm9rZS13aWR0aDogMzsiLz4KPC9zdmc+

sad svg

data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBzdGFuZGFsb25lPSJubyI/Pgo8c3ZnIHdpZHRoPSIxMDI0cHgiIGhlaWdodD0iMTAyNHB4IiB2aWV3Qm94PSIwIDAgMTAyNCAxMDI0IiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPgogIDxwYXRoIGZpbGw9IiMzMzMiIGQ9Ik01MTIgNjRDMjY0LjYgNjQgNjQgMjY0LjYgNjQgNTEyczIwMC42IDQ0OCA0NDggNDQ4IDQ0OC0yMDAuNiA0NDgtNDQ4Uzc1OS40IDY0IDUxMiA2NHptMCA4MjBjLTIwNS40IDAtMzcyLTE2Ni42LTM3Mi0zNzJzMTY2LjYtMzcyIDM3Mi0zNzIgMzcyIDE2Ni42IDM3MiAzNzItMTY2LjYgMzcyLTM3MiAzNzJ6Ii8+CiAgPHBhdGggZmlsbD0iI0U2RTZFNiIgZD0iTTUxMiAxNDBjLTIwNS40IDAtMzcyIDE2Ni42LTM3MiAzNzJzMTY2LjYgMzcyIDM3MiAzNzIgMzcyLTE2Ni42IDM3Mi0zNzItMTY2LjYtMzcyLTM3Mi0zNzJ6TTI4OCA0MjFhNDguMDEgNDguMDEgMCAwIDEgOTYgMCA0OC4wMSA0OC4wMSAwIDAgMS05NiAwem0zNzYgMjcyaC00OC4xYy00LjIgMC03LjgtMy4yLTguMS03LjRDNjA0IDYzNi4xIDU2Mi41IDU5NyA1MTIgNTk3cy05Mi4xIDM5LjEtOTUuOCA4OC42Yy0uMyA0LjItMy45IDcuNC04LjEgNy40SDM2MGE4IDggMCAwIDEtOC04LjRjNC40LTg0LjMgNzQuNS0xNTEuNiAxNjAtMTUxLjZzMTU1LjYgNjcuMyAxNjAgMTUxLjZhOCA4IDAgMCAxLTggOC40em0yNC0yMjRhNDguMDEgNDguMDEgMCAwIDEgMC05NiA0OC4wMSA0OC4wMSAwIDAgMSAwIDk2eiIvPgogIDxwYXRoIGZpbGw9IiMzMzMiIGQ9Ik0yODggNDIxYTQ4IDQ4IDAgMSAwIDk2IDAgNDggNDggMCAxIDAtOTYgMHptMjI0IDExMmMtODUuNSAwLTE1NS42IDY3LjMtMTYwIDE1MS42YTggOCAwIDAgMCA4IDguNGg0OC4xYzQuMiAwIDcuOC0zLjIgOC4xLTcuNCAzLjctNDkuNSA0NS4zLTg4LjYgOTUuOC04OC42czkyIDM5LjEgOTUuOCA4OC42Yy4zIDQuMiAzLjkgNy40IDguMSA3LjRINjY0YTggOCAwIDAgMCA4LTguNEM2NjcuNiA2MDAuMyA1OTcuNSA1MzMgNTEyIDUzM3ptMTI4LTExMmE0OCA0OCAwIDEgMCA5NiAwIDQ4IDQ4IDAgMSAwLTk2IDB6Ii8+Cjwvc3ZnPg==
import '../glory_backend.dart';

class CharacterController extends HTTPController {
  @httpGet
  Future<Response> getCharacters() async {
    return new Response.ok([
      {
        "id": 1,
        "name": "Adagio",
        "serverName": "*Adagio*"
      },
      {
        "id": 2,
        "name": "Alpha",
        "serverName": "*Alpha*"
      },
      {
        "id": 3,
        "name": "Ardan",
        "serverName": "*Ardan*"
      },
      {
        "id": 4,
        "name": "Baron",
        "serverName": "*Baron*"
      },
      {
        "id": 5,
        "name": "Blackfeather",
        "serverName": "*Blackfeather*"
      },
      {
        "id": 6,
        "name": "Catherine",
        "serverName": "*Catherine*"
      },
      {
        "id": 7,
        "name": "Celeste",
        "serverName": "*Celeste*"
      },
      {
        "id": 8,
        "name": "Flicker",
        "serverName": "*Flicker*"
      },
      {
        "id": 9,
        "name": "Fortress",
        "serverName": "*Fortress*"
      },
      {
        "id": 10,
        "name": "Glaive",
        "serverName": "*Glaive*"
      },
      {
        "id": 11,
        "name": "Gwen",
        "serverName": "*Gwen*"
      },
      {
        "id": 12,
        "name": "Krul",
        "serverName": "*Hero009*"
      },
      {
        "id": 13,
        "name": "Skaarf",
        "serverName": "*Hero010*"
      },
      {
        "id": 14,
        "name": "Rona",
        "serverName": "*Hero016*"
      },
      {
        "id": 15,
        "name": "Idris",
        "serverName": "*Idris*"
      },
      {
        "id": 16,
        "name": "Joule",
        "serverName": "*Joule*"
      },
      {
        "id": 17,
        "name": "Kestrel",
        "serverName": "*Kestrel*"
      },
      {
        "id": 18,
        "name": "Koshka",
        "serverName": "*Koshka*"
      },
      {
        "id": 19,
        "name": "Lance",
        "serverName": "*Lance*"
      },
      {
        "id": 20,
        "name": "Lyra",
        "serverName": "*Lyra*"
      },
      {
        "id": 21,
        "name": "Ozo",
        "serverName": "*Ozo*"
      },
      {
        "id": 22,
        "name": "Petal",
        "serverName": "*Petal*"
      },
      {
        "id": 23,
        "name": "Phinn",
        "serverName": "*Phinn*"
      },
      {
        "id": 24,
        "name": "Reim",
        "serverName": "*Reim*"
      },
      {
        "id": 25,
        "name": "Ringo",
        "serverName": "*Ringo*"
      },
      {
        "id": 26,
        "name": "SAW",
        "serverName": "*SAW*"
      },
      {
        "id": 27,
        "name": "Samuel",
        "serverName": "*Samuel*"
      },
      {
        "id": 28,
        "name": "Taka",
        "serverName": "*Sayoc*"
      },
      {
        "id": 29,
        "name": "Skye",
        "serverName": "*Skye*"
      },
      {
        "id": 30,
        "name": "Vox",
        "serverName": "*Vox*"
      }
    ]);
  }
}

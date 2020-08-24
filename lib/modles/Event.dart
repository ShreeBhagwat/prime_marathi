
class Event {
    String eventID;
    String eventName;
    String eventThumb;
    String eventURL;

    Event({this.eventID, this.eventName, this.eventThumb, this.eventURL});

    factory Event.fromJson(Map<String, dynamic> json) {
        return Event(
            eventID: json['eventID'], 
            eventName: json['eventName'], 
            eventThumb: json['eventThumb'], 
            eventURL: json['eventURL'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['eventID'] = this.eventID;
        data['eventName'] = this.eventName;
        data['eventThumb'] = this.eventThumb;
        data['eventURL'] = this.eventURL;
        return data;
    }
}
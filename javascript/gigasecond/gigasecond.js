class Gigasecond {
  constructor(date) {
    this.startDate = date;
  }

  date() {
    return new Date(this.startDate.getTime() + 1e12);
  }
}

module.exports = Gigasecond;

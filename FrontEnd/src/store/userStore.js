import create from "zustand";

const useUserStore = create((set) => ({
  user: null,
  classChoice:null,
  ticketPrice:0,
  zoneChoice:null,
  nbTicket:0,
  setUser: (user) => set({ user }),
  setClassChoice: (classChoice) => set({ classChoice }),
  setTicketPrice: (ticketPrice) => set({ ticketPrice }),
  setZoneChoice: (zoneChoice) => set({ zoneChoice }),
  setNbTicket: (nbTicket) => set({ nbTicket }),
}));

export default useUserStore;

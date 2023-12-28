import create from "zustand";

const useUserStore = create((set) => ({
  user: null,
  SavedClassChoice: null,
  ticketPrice: 0,
  zoneChoice: null,
  nbTicket: 0,
  setUser: (user) => set({ user }),
  setSavedClassChoice: (SavedClassChoice) => set({ SavedClassChoice }),
  setTicketPrice: (ticketPrice) => set({ ticketPrice }),
  setZoneChoice: (zoneChoice) => set({ zoneChoice }),
  setNbTicket: (nbTicket) => set({ nbTicket }),
}));

export default useUserStore;

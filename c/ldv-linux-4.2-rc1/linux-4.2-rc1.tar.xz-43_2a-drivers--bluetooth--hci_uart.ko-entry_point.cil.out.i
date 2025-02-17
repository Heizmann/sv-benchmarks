extern void __VERIFIER_error() __attribute__ ((__noreturn__));
typedef signed char __s8;
typedef unsigned char __u8;
typedef short __s16;
typedef unsigned short __u16;
typedef int __s32;
typedef unsigned int __u32;
typedef unsigned long long __u64;
typedef signed char s8;
typedef unsigned char u8;
typedef unsigned short u16;
typedef int s32;
typedef unsigned int u32;
typedef long long s64;
typedef unsigned long long u64;
typedef long __kernel_long_t;
typedef unsigned long __kernel_ulong_t;
typedef int __kernel_pid_t;
typedef unsigned int __kernel_uid32_t;
typedef unsigned int __kernel_gid32_t;
typedef __kernel_ulong_t __kernel_size_t;
typedef __kernel_long_t __kernel_ssize_t;
typedef long long __kernel_loff_t;
typedef __kernel_long_t __kernel_time_t;
typedef __kernel_long_t __kernel_clock_t;
typedef int __kernel_timer_t;
typedef int __kernel_clockid_t;
typedef __u16 __le16;
typedef __u16 __be16;
typedef __u32 __be32;
typedef __u32 __wsum;
struct kernel_symbol {
   unsigned long value ;
   char const *name ;
};
struct module;
typedef __u32 __kernel_dev_t;
typedef __kernel_dev_t dev_t;
typedef unsigned short umode_t;
typedef __kernel_pid_t pid_t;
typedef __kernel_clockid_t clockid_t;
typedef _Bool bool;
typedef __kernel_uid32_t uid_t;
typedef __kernel_gid32_t gid_t;
typedef __kernel_loff_t loff_t;
typedef __kernel_size_t size_t;
typedef __kernel_ssize_t ssize_t;
typedef __kernel_time_t time_t;
typedef __s32 int32_t;
typedef __u8 uint8_t;
typedef __u32 uint32_t;
typedef __u64 uint64_t;
typedef unsigned long sector_t;
typedef unsigned long blkcnt_t;
typedef u64 dma_addr_t;
typedef unsigned int gfp_t;
typedef unsigned int fmode_t;
typedef unsigned int oom_flags_t;
struct __anonstruct_atomic_t_6 {
   int counter ;
};
typedef struct __anonstruct_atomic_t_6 atomic_t;
struct __anonstruct_atomic64_t_7 {
   long counter ;
};
typedef struct __anonstruct_atomic64_t_7 atomic64_t;
struct list_head {
   struct list_head *next ;
   struct list_head *prev ;
};
struct hlist_node;
struct hlist_head {
   struct hlist_node *first ;
};
struct hlist_node {
   struct hlist_node *next ;
   struct hlist_node **pprev ;
};
struct callback_head {
   struct callback_head *next ;
   void (*func)(struct callback_head * ) ;
};
struct pt_regs {
   unsigned long r15 ;
   unsigned long r14 ;
   unsigned long r13 ;
   unsigned long r12 ;
   unsigned long bp ;
   unsigned long bx ;
   unsigned long r11 ;
   unsigned long r10 ;
   unsigned long r9 ;
   unsigned long r8 ;
   unsigned long ax ;
   unsigned long cx ;
   unsigned long dx ;
   unsigned long si ;
   unsigned long di ;
   unsigned long orig_ax ;
   unsigned long ip ;
   unsigned long cs ;
   unsigned long flags ;
   unsigned long sp ;
   unsigned long ss ;
};
struct __anonstruct____missing_field_name_9 {
   unsigned int a ;
   unsigned int b ;
};
struct __anonstruct____missing_field_name_10 {
   u16 limit0 ;
   u16 base0 ;
   unsigned char base1 ;
   unsigned char type : 4 ;
   unsigned char s : 1 ;
   unsigned char dpl : 2 ;
   unsigned char p : 1 ;
   unsigned char limit : 4 ;
   unsigned char avl : 1 ;
   unsigned char l : 1 ;
   unsigned char d : 1 ;
   unsigned char g : 1 ;
   unsigned char base2 ;
};
union __anonunion____missing_field_name_8 {
   struct __anonstruct____missing_field_name_9 __annonCompField4 ;
   struct __anonstruct____missing_field_name_10 __annonCompField5 ;
};
struct desc_struct {
   union __anonunion____missing_field_name_8 __annonCompField6 ;
};
typedef unsigned long pteval_t;
typedef unsigned long pgdval_t;
typedef unsigned long pgprotval_t;
struct __anonstruct_pte_t_11 {
   pteval_t pte ;
};
typedef struct __anonstruct_pte_t_11 pte_t;
struct pgprot {
   pgprotval_t pgprot ;
};
typedef struct pgprot pgprot_t;
struct __anonstruct_pgd_t_12 {
   pgdval_t pgd ;
};
typedef struct __anonstruct_pgd_t_12 pgd_t;
struct page;
typedef struct page *pgtable_t;
struct file;
struct seq_file;
struct thread_struct;
struct mm_struct;
struct task_struct;
struct cpumask;
struct qspinlock {
   atomic_t val ;
};
typedef struct qspinlock arch_spinlock_t;
struct qrwlock {
   atomic_t cnts ;
   arch_spinlock_t lock ;
};
typedef struct qrwlock arch_rwlock_t;
typedef void (*ctor_fn_t)(void);
struct _ddebug {
   char const *modname ;
   char const *function ;
   char const *filename ;
   char const *format ;
   unsigned int lineno : 18 ;
   unsigned char flags ;
};
struct device;
struct net_device;
struct file_operations;
struct completion;
struct bug_entry {
   int bug_addr_disp ;
   int file_disp ;
   unsigned short line ;
   unsigned short flags ;
};
struct timespec;
struct compat_timespec;
struct __anonstruct_futex_16 {
   u32 *uaddr ;
   u32 val ;
   u32 flags ;
   u32 bitset ;
   u64 time ;
   u32 *uaddr2 ;
};
struct __anonstruct_nanosleep_17 {
   clockid_t clockid ;
   struct timespec *rmtp ;
   struct compat_timespec *compat_rmtp ;
   u64 expires ;
};
struct pollfd;
struct __anonstruct_poll_18 {
   struct pollfd *ufds ;
   int nfds ;
   int has_timeout ;
   unsigned long tv_sec ;
   unsigned long tv_nsec ;
};
union __anonunion____missing_field_name_15 {
   struct __anonstruct_futex_16 futex ;
   struct __anonstruct_nanosleep_17 nanosleep ;
   struct __anonstruct_poll_18 poll ;
};
struct restart_block {
   long (*fn)(struct restart_block * ) ;
   union __anonunion____missing_field_name_15 __annonCompField7 ;
};
struct kernel_vm86_regs {
   struct pt_regs pt ;
   unsigned short es ;
   unsigned short __esh ;
   unsigned short ds ;
   unsigned short __dsh ;
   unsigned short fs ;
   unsigned short __fsh ;
   unsigned short gs ;
   unsigned short __gsh ;
};
union __anonunion____missing_field_name_19 {
   struct pt_regs *regs ;
   struct kernel_vm86_regs *vm86 ;
};
struct math_emu_info {
   long ___orig_eip ;
   union __anonunion____missing_field_name_19 __annonCompField8 ;
};
struct cpumask {
   unsigned long bits[128U] ;
};
typedef struct cpumask cpumask_t;
typedef struct cpumask *cpumask_var_t;
struct fregs_state {
   u32 cwd ;
   u32 swd ;
   u32 twd ;
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
   u32 st_space[20U] ;
   u32 status ;
};
struct __anonstruct____missing_field_name_29 {
   u64 rip ;
   u64 rdp ;
};
struct __anonstruct____missing_field_name_30 {
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
};
union __anonunion____missing_field_name_28 {
   struct __anonstruct____missing_field_name_29 __annonCompField12 ;
   struct __anonstruct____missing_field_name_30 __annonCompField13 ;
};
union __anonunion____missing_field_name_31 {
   u32 padding1[12U] ;
   u32 sw_reserved[12U] ;
};
struct fxregs_state {
   u16 cwd ;
   u16 swd ;
   u16 twd ;
   u16 fop ;
   union __anonunion____missing_field_name_28 __annonCompField14 ;
   u32 mxcsr ;
   u32 mxcsr_mask ;
   u32 st_space[32U] ;
   u32 xmm_space[64U] ;
   u32 padding[12U] ;
   union __anonunion____missing_field_name_31 __annonCompField15 ;
};
struct swregs_state {
   u32 cwd ;
   u32 swd ;
   u32 twd ;
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
   u32 st_space[20U] ;
   u8 ftop ;
   u8 changed ;
   u8 lookahead ;
   u8 no_update ;
   u8 rm ;
   u8 alimit ;
   struct math_emu_info *info ;
   u32 entry_eip ;
};
struct xstate_header {
   u64 xfeatures ;
   u64 xcomp_bv ;
   u64 reserved[6U] ;
};
struct xregs_state {
   struct fxregs_state i387 ;
   struct xstate_header header ;
   u8 __reserved[464U] ;
};
union fpregs_state {
   struct fregs_state fsave ;
   struct fxregs_state fxsave ;
   struct swregs_state soft ;
   struct xregs_state xsave ;
};
struct fpu {
   union fpregs_state state ;
   unsigned int last_cpu ;
   unsigned char fpstate_active ;
   unsigned char fpregs_active ;
   unsigned char counter ;
};
struct seq_operations;
struct perf_event;
struct thread_struct {
   struct desc_struct tls_array[3U] ;
   unsigned long sp0 ;
   unsigned long sp ;
   unsigned short es ;
   unsigned short ds ;
   unsigned short fsindex ;
   unsigned short gsindex ;
   unsigned long fs ;
   unsigned long gs ;
   struct fpu fpu ;
   struct perf_event *ptrace_bps[4U] ;
   unsigned long debugreg6 ;
   unsigned long ptrace_dr7 ;
   unsigned long cr2 ;
   unsigned long trap_nr ;
   unsigned long error_code ;
   unsigned long *io_bitmap_ptr ;
   unsigned long iopl ;
   unsigned int io_bitmap_max ;
};
typedef atomic64_t atomic_long_t;
struct lockdep_map;
struct stack_trace {
   unsigned int nr_entries ;
   unsigned int max_entries ;
   unsigned long *entries ;
   int skip ;
};
struct lockdep_subclass_key {
   char __one_byte ;
};
struct lock_class_key {
   struct lockdep_subclass_key subkeys[8U] ;
};
struct lock_class {
   struct list_head hash_entry ;
   struct list_head lock_entry ;
   struct lockdep_subclass_key *key ;
   unsigned int subclass ;
   unsigned int dep_gen_id ;
   unsigned long usage_mask ;
   struct stack_trace usage_traces[13U] ;
   struct list_head locks_after ;
   struct list_head locks_before ;
   unsigned int version ;
   unsigned long ops ;
   char const *name ;
   int name_version ;
   unsigned long contention_point[4U] ;
   unsigned long contending_point[4U] ;
};
struct lockdep_map {
   struct lock_class_key *key ;
   struct lock_class *class_cache[2U] ;
   char const *name ;
   int cpu ;
   unsigned long ip ;
};
struct held_lock {
   u64 prev_chain_key ;
   unsigned long acquire_ip ;
   struct lockdep_map *instance ;
   struct lockdep_map *nest_lock ;
   u64 waittime_stamp ;
   u64 holdtime_stamp ;
   unsigned short class_idx : 13 ;
   unsigned char irq_context : 2 ;
   unsigned char trylock : 1 ;
   unsigned char read : 2 ;
   unsigned char check : 1 ;
   unsigned char hardirqs_off : 1 ;
   unsigned short references : 12 ;
   unsigned int pin_count ;
};
struct raw_spinlock {
   arch_spinlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct raw_spinlock raw_spinlock_t;
struct __anonstruct____missing_field_name_35 {
   u8 __padding[24U] ;
   struct lockdep_map dep_map ;
};
union __anonunion____missing_field_name_34 {
   struct raw_spinlock rlock ;
   struct __anonstruct____missing_field_name_35 __annonCompField17 ;
};
struct spinlock {
   union __anonunion____missing_field_name_34 __annonCompField18 ;
};
typedef struct spinlock spinlock_t;
struct __anonstruct_rwlock_t_36 {
   arch_rwlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct __anonstruct_rwlock_t_36 rwlock_t;
struct seqcount {
   unsigned int sequence ;
   struct lockdep_map dep_map ;
};
typedef struct seqcount seqcount_t;
struct __anonstruct_seqlock_t_45 {
   struct seqcount seqcount ;
   spinlock_t lock ;
};
typedef struct __anonstruct_seqlock_t_45 seqlock_t;
struct timespec {
   __kernel_time_t tv_sec ;
   long tv_nsec ;
};
struct user_namespace;
struct __anonstruct_kuid_t_46 {
   uid_t val ;
};
typedef struct __anonstruct_kuid_t_46 kuid_t;
struct __anonstruct_kgid_t_47 {
   gid_t val ;
};
typedef struct __anonstruct_kgid_t_47 kgid_t;
struct kstat {
   u64 ino ;
   dev_t dev ;
   umode_t mode ;
   unsigned int nlink ;
   kuid_t uid ;
   kgid_t gid ;
   dev_t rdev ;
   loff_t size ;
   struct timespec atime ;
   struct timespec mtime ;
   struct timespec ctime ;
   unsigned long blksize ;
   unsigned long long blocks ;
};
struct vm_area_struct;
struct __wait_queue_head {
   spinlock_t lock ;
   struct list_head task_list ;
};
typedef struct __wait_queue_head wait_queue_head_t;
struct __anonstruct_nodemask_t_48 {
   unsigned long bits[16U] ;
};
typedef struct __anonstruct_nodemask_t_48 nodemask_t;
struct optimistic_spin_queue {
   atomic_t tail ;
};
struct mutex {
   atomic_t count ;
   spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct task_struct *owner ;
   void *magic ;
   struct lockdep_map dep_map ;
};
struct mutex_waiter {
   struct list_head list ;
   struct task_struct *task ;
   void *magic ;
};
struct rw_semaphore;
struct rw_semaphore {
   long count ;
   struct list_head wait_list ;
   raw_spinlock_t wait_lock ;
   struct optimistic_spin_queue osq ;
   struct task_struct *owner ;
   struct lockdep_map dep_map ;
};
struct completion {
   unsigned int done ;
   wait_queue_head_t wait ;
};
union ktime {
   s64 tv64 ;
};
typedef union ktime ktime_t;
struct notifier_block;
struct timer_list {
   struct hlist_node entry ;
   unsigned long expires ;
   void (*function)(unsigned long ) ;
   unsigned long data ;
   u32 flags ;
   int slack ;
   int start_pid ;
   void *start_site ;
   char start_comm[16U] ;
   struct lockdep_map lockdep_map ;
};
struct hrtimer;
enum hrtimer_restart;
struct rb_node {
   unsigned long __rb_parent_color ;
   struct rb_node *rb_right ;
   struct rb_node *rb_left ;
};
struct rb_root {
   struct rb_node *rb_node ;
};
struct ctl_table;
struct nsproxy;
struct ctl_table_root;
struct ctl_table_header;
struct ctl_dir;
typedef int proc_handler(struct ctl_table * , int , void * , size_t * , loff_t * );
struct ctl_table_poll {
   atomic_t event ;
   wait_queue_head_t wait ;
};
struct ctl_table {
   char const *procname ;
   void *data ;
   int maxlen ;
   umode_t mode ;
   struct ctl_table *child ;
   proc_handler *proc_handler ;
   struct ctl_table_poll *poll ;
   void *extra1 ;
   void *extra2 ;
};
struct ctl_node {
   struct rb_node node ;
   struct ctl_table_header *header ;
};
struct __anonstruct____missing_field_name_50 {
   struct ctl_table *ctl_table ;
   int used ;
   int count ;
   int nreg ;
};
union __anonunion____missing_field_name_49 {
   struct __anonstruct____missing_field_name_50 __annonCompField19 ;
   struct callback_head rcu ;
};
struct ctl_table_set;
struct ctl_table_header {
   union __anonunion____missing_field_name_49 __annonCompField20 ;
   struct completion *unregistering ;
   struct ctl_table *ctl_table_arg ;
   struct ctl_table_root *root ;
   struct ctl_table_set *set ;
   struct ctl_dir *parent ;
   struct ctl_node *node ;
};
struct ctl_dir {
   struct ctl_table_header header ;
   struct rb_root root ;
};
struct ctl_table_set {
   int (*is_seen)(struct ctl_table_set * ) ;
   struct ctl_dir dir ;
};
struct ctl_table_root {
   struct ctl_table_set default_set ;
   struct ctl_table_set *(*lookup)(struct ctl_table_root * , struct nsproxy * ) ;
   int (*permissions)(struct ctl_table_header * , struct ctl_table * ) ;
};
struct workqueue_struct;
struct work_struct;
struct work_struct {
   atomic_long_t data ;
   struct list_head entry ;
   void (*func)(struct work_struct * ) ;
   struct lockdep_map lockdep_map ;
};
struct delayed_work {
   struct work_struct work ;
   struct timer_list timer ;
   struct workqueue_struct *wq ;
   int cpu ;
};
struct notifier_block {
   int (*notifier_call)(struct notifier_block * , unsigned long , void * ) ;
   struct notifier_block *next ;
   int priority ;
};
struct pm_message {
   int event ;
};
typedef struct pm_message pm_message_t;
struct dev_pm_ops {
   int (*prepare)(struct device * ) ;
   void (*complete)(struct device * ) ;
   int (*suspend)(struct device * ) ;
   int (*resume)(struct device * ) ;
   int (*freeze)(struct device * ) ;
   int (*thaw)(struct device * ) ;
   int (*poweroff)(struct device * ) ;
   int (*restore)(struct device * ) ;
   int (*suspend_late)(struct device * ) ;
   int (*resume_early)(struct device * ) ;
   int (*freeze_late)(struct device * ) ;
   int (*thaw_early)(struct device * ) ;
   int (*poweroff_late)(struct device * ) ;
   int (*restore_early)(struct device * ) ;
   int (*suspend_noirq)(struct device * ) ;
   int (*resume_noirq)(struct device * ) ;
   int (*freeze_noirq)(struct device * ) ;
   int (*thaw_noirq)(struct device * ) ;
   int (*poweroff_noirq)(struct device * ) ;
   int (*restore_noirq)(struct device * ) ;
   int (*runtime_suspend)(struct device * ) ;
   int (*runtime_resume)(struct device * ) ;
   int (*runtime_idle)(struct device * ) ;
};
enum rpm_status {
    RPM_ACTIVE = 0,
    RPM_RESUMING = 1,
    RPM_SUSPENDED = 2,
    RPM_SUSPENDING = 3
} ;
enum rpm_request {
    RPM_REQ_NONE = 0,
    RPM_REQ_IDLE = 1,
    RPM_REQ_SUSPEND = 2,
    RPM_REQ_AUTOSUSPEND = 3,
    RPM_REQ_RESUME = 4
} ;
struct wakeup_source;
struct wake_irq;
struct pm_subsys_data {
   spinlock_t lock ;
   unsigned int refcount ;
   struct list_head clock_list ;
};
struct dev_pm_qos;
struct dev_pm_info {
   pm_message_t power_state ;
   unsigned char can_wakeup : 1 ;
   unsigned char async_suspend : 1 ;
   bool is_prepared ;
   bool is_suspended ;
   bool is_noirq_suspended ;
   bool is_late_suspended ;
   bool ignore_children ;
   bool early_init ;
   bool direct_complete ;
   spinlock_t lock ;
   struct list_head entry ;
   struct completion completion ;
   struct wakeup_source *wakeup ;
   bool wakeup_path ;
   bool syscore ;
   struct timer_list suspend_timer ;
   unsigned long timer_expires ;
   struct work_struct work ;
   wait_queue_head_t wait_queue ;
   struct wake_irq *wakeirq ;
   atomic_t usage_count ;
   atomic_t child_count ;
   unsigned char disable_depth : 3 ;
   unsigned char idle_notification : 1 ;
   unsigned char request_pending : 1 ;
   unsigned char deferred_resume : 1 ;
   unsigned char run_wake : 1 ;
   unsigned char runtime_auto : 1 ;
   unsigned char no_callbacks : 1 ;
   unsigned char irq_safe : 1 ;
   unsigned char use_autosuspend : 1 ;
   unsigned char timer_autosuspends : 1 ;
   unsigned char memalloc_noio : 1 ;
   enum rpm_request request ;
   enum rpm_status runtime_status ;
   int runtime_error ;
   int autosuspend_delay ;
   unsigned long last_busy ;
   unsigned long active_jiffies ;
   unsigned long suspended_jiffies ;
   unsigned long accounting_timestamp ;
   struct pm_subsys_data *subsys_data ;
   void (*set_latency_tolerance)(struct device * , s32 ) ;
   struct dev_pm_qos *qos ;
};
struct dev_pm_domain {
   struct dev_pm_ops ops ;
   void (*detach)(struct device * , bool ) ;
   int (*activate)(struct device * ) ;
   void (*sync)(struct device * ) ;
   void (*dismiss)(struct device * ) ;
};
struct __anonstruct_mm_context_t_115 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
   atomic_t perf_rdpmc_allowed ;
};
typedef struct __anonstruct_mm_context_t_115 mm_context_t;
struct bio_vec;
struct llist_node;
struct llist_head {
   struct llist_node *first ;
};
struct llist_node {
   struct llist_node *next ;
};
struct cred;
struct inode;
struct arch_uprobe_task {
   unsigned long saved_scratch_register ;
   unsigned int saved_trap_nr ;
   unsigned int saved_tf ;
};
enum uprobe_task_state {
    UTASK_RUNNING = 0,
    UTASK_SSTEP = 1,
    UTASK_SSTEP_ACK = 2,
    UTASK_SSTEP_TRAPPED = 3
} ;
struct __anonstruct____missing_field_name_148 {
   struct arch_uprobe_task autask ;
   unsigned long vaddr ;
};
struct __anonstruct____missing_field_name_149 {
   struct callback_head dup_xol_work ;
   unsigned long dup_xol_addr ;
};
union __anonunion____missing_field_name_147 {
   struct __anonstruct____missing_field_name_148 __annonCompField33 ;
   struct __anonstruct____missing_field_name_149 __annonCompField34 ;
};
struct uprobe;
struct return_instance;
struct uprobe_task {
   enum uprobe_task_state state ;
   union __anonunion____missing_field_name_147 __annonCompField35 ;
   struct uprobe *active_uprobe ;
   unsigned long xol_vaddr ;
   struct return_instance *return_instances ;
   unsigned int depth ;
};
struct xol_area;
struct uprobes_state {
   struct xol_area *xol_area ;
};
struct address_space;
struct mem_cgroup;
typedef void compound_page_dtor(struct page * );
union __anonunion____missing_field_name_150 {
   struct address_space *mapping ;
   void *s_mem ;
};
union __anonunion____missing_field_name_152 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct____missing_field_name_156 {
   unsigned short inuse ;
   unsigned short objects : 15 ;
   unsigned char frozen : 1 ;
};
union __anonunion____missing_field_name_155 {
   atomic_t _mapcount ;
   struct __anonstruct____missing_field_name_156 __annonCompField38 ;
   int units ;
};
struct __anonstruct____missing_field_name_154 {
   union __anonunion____missing_field_name_155 __annonCompField39 ;
   atomic_t _count ;
};
union __anonunion____missing_field_name_153 {
   unsigned long counters ;
   struct __anonstruct____missing_field_name_154 __annonCompField40 ;
   unsigned int active ;
};
struct __anonstruct____missing_field_name_151 {
   union __anonunion____missing_field_name_152 __annonCompField37 ;
   union __anonunion____missing_field_name_153 __annonCompField41 ;
};
struct __anonstruct____missing_field_name_158 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
struct __anonstruct____missing_field_name_159 {
   compound_page_dtor *compound_dtor ;
   unsigned long compound_order ;
};
union __anonunion____missing_field_name_157 {
   struct list_head lru ;
   struct __anonstruct____missing_field_name_158 __annonCompField43 ;
   struct slab *slab_page ;
   struct callback_head callback_head ;
   struct __anonstruct____missing_field_name_159 __annonCompField44 ;
   pgtable_t pmd_huge_pte ;
};
struct kmem_cache;
union __anonunion____missing_field_name_160 {
   unsigned long private ;
   spinlock_t *ptl ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   union __anonunion____missing_field_name_150 __annonCompField36 ;
   struct __anonstruct____missing_field_name_151 __annonCompField42 ;
   union __anonunion____missing_field_name_157 __annonCompField45 ;
   union __anonunion____missing_field_name_160 __annonCompField46 ;
   struct mem_cgroup *mem_cgroup ;
};
struct page_frag {
   struct page *page ;
   __u32 offset ;
   __u32 size ;
};
struct __anonstruct_shared_161 {
   struct rb_node rb ;
   unsigned long rb_subtree_last ;
};
struct anon_vma;
struct vm_operations_struct;
struct mempolicy;
struct vm_area_struct {
   unsigned long vm_start ;
   unsigned long vm_end ;
   struct vm_area_struct *vm_next ;
   struct vm_area_struct *vm_prev ;
   struct rb_node vm_rb ;
   unsigned long rb_subtree_gap ;
   struct mm_struct *vm_mm ;
   pgprot_t vm_page_prot ;
   unsigned long vm_flags ;
   struct __anonstruct_shared_161 shared ;
   struct list_head anon_vma_chain ;
   struct anon_vma *anon_vma ;
   struct vm_operations_struct const *vm_ops ;
   unsigned long vm_pgoff ;
   struct file *vm_file ;
   void *vm_private_data ;
   struct mempolicy *vm_policy ;
};
struct core_thread {
   struct task_struct *task ;
   struct core_thread *next ;
};
struct core_state {
   atomic_t nr_threads ;
   struct core_thread dumper ;
   struct completion startup ;
};
struct task_rss_stat {
   int events ;
   int count[3U] ;
};
struct mm_rss_stat {
   atomic_long_t count[3U] ;
};
struct kioctx_table;
struct linux_binfmt;
struct mmu_notifier_mm;
struct mm_struct {
   struct vm_area_struct *mmap ;
   struct rb_root mm_rb ;
   u32 vmacache_seqnum ;
   unsigned long (*get_unmapped_area)(struct file * , unsigned long , unsigned long ,
                                      unsigned long , unsigned long ) ;
   unsigned long mmap_base ;
   unsigned long mmap_legacy_base ;
   unsigned long task_size ;
   unsigned long highest_vm_end ;
   pgd_t *pgd ;
   atomic_t mm_users ;
   atomic_t mm_count ;
   atomic_long_t nr_ptes ;
   atomic_long_t nr_pmds ;
   int map_count ;
   spinlock_t page_table_lock ;
   struct rw_semaphore mmap_sem ;
   struct list_head mmlist ;
   unsigned long hiwater_rss ;
   unsigned long hiwater_vm ;
   unsigned long total_vm ;
   unsigned long locked_vm ;
   unsigned long pinned_vm ;
   unsigned long shared_vm ;
   unsigned long exec_vm ;
   unsigned long stack_vm ;
   unsigned long def_flags ;
   unsigned long start_code ;
   unsigned long end_code ;
   unsigned long start_data ;
   unsigned long end_data ;
   unsigned long start_brk ;
   unsigned long brk ;
   unsigned long start_stack ;
   unsigned long arg_start ;
   unsigned long arg_end ;
   unsigned long env_start ;
   unsigned long env_end ;
   unsigned long saved_auxv[46U] ;
   struct mm_rss_stat rss_stat ;
   struct linux_binfmt *binfmt ;
   cpumask_var_t cpu_vm_mask_var ;
   mm_context_t context ;
   unsigned long flags ;
   struct core_state *core_state ;
   spinlock_t ioctx_lock ;
   struct kioctx_table *ioctx_table ;
   struct task_struct *owner ;
   struct file *exe_file ;
   struct mmu_notifier_mm *mmu_notifier_mm ;
   struct cpumask cpumask_allocation ;
   unsigned long numa_next_scan ;
   unsigned long numa_scan_offset ;
   int numa_scan_seq ;
   bool tlb_flush_pending ;
   struct uprobes_state uprobes_state ;
   void *bd_addr ;
};
typedef __u64 Elf64_Addr;
typedef __u16 Elf64_Half;
typedef __u32 Elf64_Word;
typedef __u64 Elf64_Xword;
struct elf64_sym {
   Elf64_Word st_name ;
   unsigned char st_info ;
   unsigned char st_other ;
   Elf64_Half st_shndx ;
   Elf64_Addr st_value ;
   Elf64_Xword st_size ;
};
typedef struct elf64_sym Elf64_Sym;
union __anonunion____missing_field_name_166 {
   unsigned long bitmap[4U] ;
   struct callback_head callback_head ;
};
struct idr_layer {
   int prefix ;
   int layer ;
   struct idr_layer *ary[256U] ;
   int count ;
   union __anonunion____missing_field_name_166 __annonCompField47 ;
};
struct idr {
   struct idr_layer *hint ;
   struct idr_layer *top ;
   int layers ;
   int cur ;
   spinlock_t lock ;
   int id_free_cnt ;
   struct idr_layer *id_free ;
};
struct ida_bitmap {
   long nr_busy ;
   unsigned long bitmap[15U] ;
};
struct ida {
   struct idr idr ;
   struct ida_bitmap *free_bitmap ;
};
struct dentry;
struct iattr;
struct super_block;
struct file_system_type;
struct kernfs_open_node;
struct kernfs_iattrs;
struct kernfs_root;
struct kernfs_elem_dir {
   unsigned long subdirs ;
   struct rb_root children ;
   struct kernfs_root *root ;
};
struct kernfs_node;
struct kernfs_elem_symlink {
   struct kernfs_node *target_kn ;
};
struct kernfs_ops;
struct kernfs_elem_attr {
   struct kernfs_ops const *ops ;
   struct kernfs_open_node *open ;
   loff_t size ;
   struct kernfs_node *notify_next ;
};
union __anonunion____missing_field_name_171 {
   struct kernfs_elem_dir dir ;
   struct kernfs_elem_symlink symlink ;
   struct kernfs_elem_attr attr ;
};
struct kernfs_node {
   atomic_t count ;
   atomic_t active ;
   struct lockdep_map dep_map ;
   struct kernfs_node *parent ;
   char const *name ;
   struct rb_node rb ;
   void const *ns ;
   unsigned int hash ;
   union __anonunion____missing_field_name_171 __annonCompField48 ;
   void *priv ;
   unsigned short flags ;
   umode_t mode ;
   unsigned int ino ;
   struct kernfs_iattrs *iattr ;
};
struct kernfs_syscall_ops {
   int (*remount_fs)(struct kernfs_root * , int * , char * ) ;
   int (*show_options)(struct seq_file * , struct kernfs_root * ) ;
   int (*mkdir)(struct kernfs_node * , char const * , umode_t ) ;
   int (*rmdir)(struct kernfs_node * ) ;
   int (*rename)(struct kernfs_node * , struct kernfs_node * , char const * ) ;
};
struct kernfs_root {
   struct kernfs_node *kn ;
   unsigned int flags ;
   struct ida ino_ida ;
   struct kernfs_syscall_ops *syscall_ops ;
   struct list_head supers ;
   wait_queue_head_t deactivate_waitq ;
};
struct kernfs_open_file {
   struct kernfs_node *kn ;
   struct file *file ;
   void *priv ;
   struct mutex mutex ;
   int event ;
   struct list_head list ;
   char *prealloc_buf ;
   size_t atomic_write_len ;
   bool mmapped ;
   struct vm_operations_struct const *vm_ops ;
};
struct kernfs_ops {
   int (*seq_show)(struct seq_file * , void * ) ;
   void *(*seq_start)(struct seq_file * , loff_t * ) ;
   void *(*seq_next)(struct seq_file * , void * , loff_t * ) ;
   void (*seq_stop)(struct seq_file * , void * ) ;
   ssize_t (*read)(struct kernfs_open_file * , char * , size_t , loff_t ) ;
   size_t atomic_write_len ;
   bool prealloc ;
   ssize_t (*write)(struct kernfs_open_file * , char * , size_t , loff_t ) ;
   int (*mmap)(struct kernfs_open_file * , struct vm_area_struct * ) ;
   struct lock_class_key lockdep_key ;
};
struct sock;
struct kobject;
enum kobj_ns_type {
    KOBJ_NS_TYPE_NONE = 0,
    KOBJ_NS_TYPE_NET = 1,
    KOBJ_NS_TYPES = 2
} ;
struct kobj_ns_type_operations {
   enum kobj_ns_type type ;
   bool (*current_may_mount)(void) ;
   void *(*grab_current_ns)(void) ;
   void const *(*netlink_ns)(struct sock * ) ;
   void const *(*initial_ns)(void) ;
   void (*drop_ns)(void * ) ;
};
struct bin_attribute;
struct attribute {
   char const *name ;
   umode_t mode ;
   bool ignore_lockdep ;
   struct lock_class_key *key ;
   struct lock_class_key skey ;
};
struct attribute_group {
   char const *name ;
   umode_t (*is_visible)(struct kobject * , struct attribute * , int ) ;
   struct attribute **attrs ;
   struct bin_attribute **bin_attrs ;
};
struct bin_attribute {
   struct attribute attr ;
   size_t size ;
   void *private ;
   ssize_t (*read)(struct file * , struct kobject * , struct bin_attribute * , char * ,
                   loff_t , size_t ) ;
   ssize_t (*write)(struct file * , struct kobject * , struct bin_attribute * , char * ,
                    loff_t , size_t ) ;
   int (*mmap)(struct file * , struct kobject * , struct bin_attribute * , struct vm_area_struct * ) ;
};
struct sysfs_ops {
   ssize_t (*show)(struct kobject * , struct attribute * , char * ) ;
   ssize_t (*store)(struct kobject * , struct attribute * , char const * , size_t ) ;
};
struct kref {
   atomic_t refcount ;
};
struct kset;
struct kobj_type;
struct kobject {
   char const *name ;
   struct list_head entry ;
   struct kobject *parent ;
   struct kset *kset ;
   struct kobj_type *ktype ;
   struct kernfs_node *sd ;
   struct kref kref ;
   struct delayed_work release ;
   unsigned char state_initialized : 1 ;
   unsigned char state_in_sysfs : 1 ;
   unsigned char state_add_uevent_sent : 1 ;
   unsigned char state_remove_uevent_sent : 1 ;
   unsigned char uevent_suppress : 1 ;
};
struct kobj_type {
   void (*release)(struct kobject * ) ;
   struct sysfs_ops const *sysfs_ops ;
   struct attribute **default_attrs ;
   struct kobj_ns_type_operations const *(*child_ns_type)(struct kobject * ) ;
   void const *(*namespace)(struct kobject * ) ;
};
struct kobj_uevent_env {
   char *argv[3U] ;
   char *envp[32U] ;
   int envp_idx ;
   char buf[2048U] ;
   int buflen ;
};
struct kset_uevent_ops {
   int (* const filter)(struct kset * , struct kobject * ) ;
   char const *(* const name)(struct kset * , struct kobject * ) ;
   int (* const uevent)(struct kset * , struct kobject * , struct kobj_uevent_env * ) ;
};
struct kset {
   struct list_head list ;
   spinlock_t list_lock ;
   struct kobject kobj ;
   struct kset_uevent_ops const *uevent_ops ;
};
struct kernel_param;
struct kernel_param_ops {
   unsigned int flags ;
   int (*set)(char const * , struct kernel_param const * ) ;
   int (*get)(char * , struct kernel_param const * ) ;
   void (*free)(void * ) ;
};
struct kparam_string;
struct kparam_array;
union __anonunion____missing_field_name_172 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct module *mod ;
   struct kernel_param_ops const *ops ;
   u16 const perm ;
   s8 level ;
   u8 flags ;
   union __anonunion____missing_field_name_172 __annonCompField49 ;
};
struct kparam_string {
   unsigned int maxlen ;
   char *string ;
};
struct kparam_array {
   unsigned int max ;
   unsigned int elemsize ;
   unsigned int *num ;
   struct kernel_param_ops const *ops ;
   void *elem ;
};
struct latch_tree_node {
   struct rb_node node[2U] ;
};
struct mod_arch_specific {
};
struct module_param_attrs;
struct module_kobject {
   struct kobject kobj ;
   struct module *mod ;
   struct kobject *drivers_dir ;
   struct module_param_attrs *mp ;
   struct completion *kobj_completion ;
};
struct module_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct module_attribute * , struct module_kobject * , char * ) ;
   ssize_t (*store)(struct module_attribute * , struct module_kobject * , char const * ,
                    size_t ) ;
   void (*setup)(struct module * , char const * ) ;
   int (*test)(struct module * ) ;
   void (*free)(struct module * ) ;
};
struct exception_table_entry;
enum module_state {
    MODULE_STATE_LIVE = 0,
    MODULE_STATE_COMING = 1,
    MODULE_STATE_GOING = 2,
    MODULE_STATE_UNFORMED = 3
} ;
struct mod_tree_node {
   struct module *mod ;
   struct latch_tree_node node ;
};
struct module_sect_attrs;
struct module_notes_attrs;
struct tracepoint;
struct trace_event_call;
struct trace_enum_map;
struct module {
   enum module_state state ;
   struct list_head list ;
   char name[56U] ;
   struct module_kobject mkobj ;
   struct module_attribute *modinfo_attrs ;
   char const *version ;
   char const *srcversion ;
   struct kobject *holders_dir ;
   struct kernel_symbol const *syms ;
   unsigned long const *crcs ;
   unsigned int num_syms ;
   struct mutex param_lock ;
   struct kernel_param *kp ;
   unsigned int num_kp ;
   unsigned int num_gpl_syms ;
   struct kernel_symbol const *gpl_syms ;
   unsigned long const *gpl_crcs ;
   struct kernel_symbol const *unused_syms ;
   unsigned long const *unused_crcs ;
   unsigned int num_unused_syms ;
   unsigned int num_unused_gpl_syms ;
   struct kernel_symbol const *unused_gpl_syms ;
   unsigned long const *unused_gpl_crcs ;
   bool sig_ok ;
   bool async_probe_requested ;
   struct kernel_symbol const *gpl_future_syms ;
   unsigned long const *gpl_future_crcs ;
   unsigned int num_gpl_future_syms ;
   unsigned int num_exentries ;
   struct exception_table_entry *extable ;
   int (*init)(void) ;
   void *module_init ;
   void *module_core ;
   unsigned int init_size ;
   unsigned int core_size ;
   unsigned int init_text_size ;
   unsigned int core_text_size ;
   struct mod_tree_node mtn_core ;
   struct mod_tree_node mtn_init ;
   unsigned int init_ro_size ;
   unsigned int core_ro_size ;
   struct mod_arch_specific arch ;
   unsigned int taints ;
   unsigned int num_bugs ;
   struct list_head bug_list ;
   struct bug_entry *bug_table ;
   Elf64_Sym *symtab ;
   Elf64_Sym *core_symtab ;
   unsigned int num_symtab ;
   unsigned int core_num_syms ;
   char *strtab ;
   char *core_strtab ;
   struct module_sect_attrs *sect_attrs ;
   struct module_notes_attrs *notes_attrs ;
   char *args ;
   void *percpu ;
   unsigned int percpu_size ;
   unsigned int num_tracepoints ;
   struct tracepoint * const *tracepoints_ptrs ;
   unsigned int num_trace_bprintk_fmt ;
   char const **trace_bprintk_fmt_start ;
   struct trace_event_call **trace_events ;
   unsigned int num_trace_events ;
   struct trace_enum_map **trace_enums ;
   unsigned int num_trace_enums ;
   unsigned int num_ftrace_callsites ;
   unsigned long *ftrace_callsites ;
   bool klp_alive ;
   struct list_head source_list ;
   struct list_head target_list ;
   void (*exit)(void) ;
   atomic_t refcnt ;
   ctor_fn_t (**ctors)(void) ;
   unsigned int num_ctors ;
};
struct kernel_cap_struct {
   __u32 cap[2U] ;
};
typedef struct kernel_cap_struct kernel_cap_t;
struct plist_node {
   int prio ;
   struct list_head prio_list ;
   struct list_head node_list ;
};
typedef unsigned long cputime_t;
struct sem_undo_list;
struct sysv_sem {
   struct sem_undo_list *undo_list ;
};
struct user_struct;
struct sysv_shm {
   struct list_head shm_clist ;
};
struct __anonstruct_sigset_t_180 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_180 sigset_t;
struct siginfo;
typedef void __signalfn_t(int );
typedef __signalfn_t *__sighandler_t;
typedef void __restorefn_t(void);
typedef __restorefn_t *__sigrestore_t;
union sigval {
   int sival_int ;
   void *sival_ptr ;
};
typedef union sigval sigval_t;
struct __anonstruct__kill_182 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_183 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_184 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_185 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__addr_bnd_187 {
   void *_lower ;
   void *_upper ;
};
struct __anonstruct__sigfault_186 {
   void *_addr ;
   short _addr_lsb ;
   struct __anonstruct__addr_bnd_187 _addr_bnd ;
};
struct __anonstruct__sigpoll_188 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_189 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_181 {
   int _pad[28U] ;
   struct __anonstruct__kill_182 _kill ;
   struct __anonstruct__timer_183 _timer ;
   struct __anonstruct__rt_184 _rt ;
   struct __anonstruct__sigchld_185 _sigchld ;
   struct __anonstruct__sigfault_186 _sigfault ;
   struct __anonstruct__sigpoll_188 _sigpoll ;
   struct __anonstruct__sigsys_189 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_181 _sifields ;
};
typedef struct siginfo siginfo_t;
struct sigpending {
   struct list_head list ;
   sigset_t signal ;
};
struct sigaction {
   __sighandler_t sa_handler ;
   unsigned long sa_flags ;
   __sigrestore_t sa_restorer ;
   sigset_t sa_mask ;
};
struct k_sigaction {
   struct sigaction sa ;
};
enum pid_type {
    PIDTYPE_PID = 0,
    PIDTYPE_PGID = 1,
    PIDTYPE_SID = 2,
    PIDTYPE_MAX = 3
} ;
struct pid_namespace;
struct upid {
   int nr ;
   struct pid_namespace *ns ;
   struct hlist_node pid_chain ;
};
struct pid {
   atomic_t count ;
   unsigned int level ;
   struct hlist_head tasks[3U] ;
   struct callback_head rcu ;
   struct upid numbers[1U] ;
};
struct pid_link {
   struct hlist_node node ;
   struct pid *pid ;
};
struct percpu_counter {
   raw_spinlock_t lock ;
   s64 count ;
   struct list_head list ;
   s32 *counters ;
};
struct seccomp_filter;
struct seccomp {
   int mode ;
   struct seccomp_filter *filter ;
};
struct rt_mutex_waiter;
struct rlimit {
   __kernel_ulong_t rlim_cur ;
   __kernel_ulong_t rlim_max ;
};
struct timerqueue_node {
   struct rb_node node ;
   ktime_t expires ;
};
struct timerqueue_head {
   struct rb_root head ;
   struct timerqueue_node *next ;
};
struct hrtimer_clock_base;
struct hrtimer_cpu_base;
enum hrtimer_restart {
    HRTIMER_NORESTART = 0,
    HRTIMER_RESTART = 1
} ;
struct hrtimer {
   struct timerqueue_node node ;
   ktime_t _softexpires ;
   enum hrtimer_restart (*function)(struct hrtimer * ) ;
   struct hrtimer_clock_base *base ;
   unsigned long state ;
   int start_pid ;
   void *start_site ;
   char start_comm[16U] ;
};
struct hrtimer_clock_base {
   struct hrtimer_cpu_base *cpu_base ;
   int index ;
   clockid_t clockid ;
   struct timerqueue_head active ;
   ktime_t (*get_time)(void) ;
   ktime_t offset ;
};
struct hrtimer_cpu_base {
   raw_spinlock_t lock ;
   seqcount_t seq ;
   struct hrtimer *running ;
   unsigned int cpu ;
   unsigned int active_bases ;
   unsigned int clock_was_set_seq ;
   bool migration_enabled ;
   bool nohz_active ;
   unsigned char in_hrtirq : 1 ;
   unsigned char hres_active : 1 ;
   unsigned char hang_detected : 1 ;
   ktime_t expires_next ;
   struct hrtimer *next_timer ;
   unsigned int nr_events ;
   unsigned int nr_retries ;
   unsigned int nr_hangs ;
   unsigned int max_hang_time ;
   struct hrtimer_clock_base clock_base[4U] ;
};
struct task_io_accounting {
   u64 rchar ;
   u64 wchar ;
   u64 syscr ;
   u64 syscw ;
   u64 read_bytes ;
   u64 write_bytes ;
   u64 cancelled_write_bytes ;
};
struct latency_record {
   unsigned long backtrace[12U] ;
   unsigned int count ;
   unsigned long time ;
   unsigned long max ;
};
struct assoc_array_ptr;
struct assoc_array {
   struct assoc_array_ptr *root ;
   unsigned long nr_leaves_on_tree ;
};
typedef int32_t key_serial_t;
typedef uint32_t key_perm_t;
struct key;
struct signal_struct;
struct key_type;
struct keyring_index_key {
   struct key_type *type ;
   char const *description ;
   size_t desc_len ;
};
union __anonunion____missing_field_name_196 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion____missing_field_name_197 {
   time_t expiry ;
   time_t revoked_at ;
};
struct __anonstruct____missing_field_name_199 {
   struct key_type *type ;
   char *description ;
};
union __anonunion____missing_field_name_198 {
   struct keyring_index_key index_key ;
   struct __anonstruct____missing_field_name_199 __annonCompField52 ;
};
union __anonunion_type_data_200 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_202 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   void *data2[2U] ;
};
union __anonunion____missing_field_name_201 {
   union __anonunion_payload_202 payload ;
   struct assoc_array keys ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion____missing_field_name_196 __annonCompField50 ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion____missing_field_name_197 __annonCompField51 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   union __anonunion____missing_field_name_198 __annonCompField53 ;
   union __anonunion_type_data_200 type_data ;
   union __anonunion____missing_field_name_201 __annonCompField54 ;
};
struct audit_context;
struct group_info {
   atomic_t usage ;
   int ngroups ;
   int nblocks ;
   kgid_t small_block[32U] ;
   kgid_t *blocks[0U] ;
};
struct cred {
   atomic_t usage ;
   atomic_t subscribers ;
   void *put_addr ;
   unsigned int magic ;
   kuid_t uid ;
   kgid_t gid ;
   kuid_t suid ;
   kgid_t sgid ;
   kuid_t euid ;
   kgid_t egid ;
   kuid_t fsuid ;
   kgid_t fsgid ;
   unsigned int securebits ;
   kernel_cap_t cap_inheritable ;
   kernel_cap_t cap_permitted ;
   kernel_cap_t cap_effective ;
   kernel_cap_t cap_bset ;
   unsigned char jit_keyring ;
   struct key *session_keyring ;
   struct key *process_keyring ;
   struct key *thread_keyring ;
   struct key *request_key_auth ;
   void *security ;
   struct user_struct *user ;
   struct user_namespace *user_ns ;
   struct group_info *group_info ;
   struct callback_head rcu ;
};
struct percpu_ref;
typedef void percpu_ref_func_t(struct percpu_ref * );
struct percpu_ref {
   atomic_long_t count ;
   unsigned long percpu_count_ptr ;
   percpu_ref_func_t *release ;
   percpu_ref_func_t *confirm_switch ;
   bool force_atomic ;
   struct callback_head rcu ;
};
struct cgroup;
struct cgroup_root;
struct cgroup_subsys;
struct cgroup_taskset;
struct cgroup_subsys_state {
   struct cgroup *cgroup ;
   struct cgroup_subsys *ss ;
   struct percpu_ref refcnt ;
   struct cgroup_subsys_state *parent ;
   struct list_head sibling ;
   struct list_head children ;
   int id ;
   unsigned int flags ;
   u64 serial_nr ;
   struct callback_head callback_head ;
   struct work_struct destroy_work ;
};
struct css_set {
   atomic_t refcount ;
   struct hlist_node hlist ;
   struct list_head tasks ;
   struct list_head mg_tasks ;
   struct list_head cgrp_links ;
   struct cgroup *dfl_cgrp ;
   struct cgroup_subsys_state *subsys[12U] ;
   struct list_head mg_preload_node ;
   struct list_head mg_node ;
   struct cgroup *mg_src_cgrp ;
   struct css_set *mg_dst_cset ;
   struct list_head e_cset_node[12U] ;
   struct callback_head callback_head ;
};
struct cgroup {
   struct cgroup_subsys_state self ;
   unsigned long flags ;
   int id ;
   int populated_cnt ;
   struct kernfs_node *kn ;
   struct kernfs_node *procs_kn ;
   struct kernfs_node *populated_kn ;
   unsigned int subtree_control ;
   unsigned int child_subsys_mask ;
   struct cgroup_subsys_state *subsys[12U] ;
   struct cgroup_root *root ;
   struct list_head cset_links ;
   struct list_head e_csets[12U] ;
   struct list_head pidlists ;
   struct mutex pidlist_mutex ;
   wait_queue_head_t offline_waitq ;
   struct work_struct release_agent_work ;
};
struct cgroup_root {
   struct kernfs_root *kf_root ;
   unsigned int subsys_mask ;
   int hierarchy_id ;
   struct cgroup cgrp ;
   atomic_t nr_cgrps ;
   struct list_head root_list ;
   unsigned int flags ;
   struct idr cgroup_idr ;
   char release_agent_path[4096U] ;
   char name[64U] ;
};
struct cftype {
   char name[64U] ;
   int private ;
   umode_t mode ;
   size_t max_write_len ;
   unsigned int flags ;
   struct cgroup_subsys *ss ;
   struct list_head node ;
   struct kernfs_ops *kf_ops ;
   u64 (*read_u64)(struct cgroup_subsys_state * , struct cftype * ) ;
   s64 (*read_s64)(struct cgroup_subsys_state * , struct cftype * ) ;
   int (*seq_show)(struct seq_file * , void * ) ;
   void *(*seq_start)(struct seq_file * , loff_t * ) ;
   void *(*seq_next)(struct seq_file * , void * , loff_t * ) ;
   void (*seq_stop)(struct seq_file * , void * ) ;
   int (*write_u64)(struct cgroup_subsys_state * , struct cftype * , u64 ) ;
   int (*write_s64)(struct cgroup_subsys_state * , struct cftype * , s64 ) ;
   ssize_t (*write)(struct kernfs_open_file * , char * , size_t , loff_t ) ;
   struct lock_class_key lockdep_key ;
};
struct cgroup_subsys {
   struct cgroup_subsys_state *(*css_alloc)(struct cgroup_subsys_state * ) ;
   int (*css_online)(struct cgroup_subsys_state * ) ;
   void (*css_offline)(struct cgroup_subsys_state * ) ;
   void (*css_released)(struct cgroup_subsys_state * ) ;
   void (*css_free)(struct cgroup_subsys_state * ) ;
   void (*css_reset)(struct cgroup_subsys_state * ) ;
   void (*css_e_css_changed)(struct cgroup_subsys_state * ) ;
   int (*can_attach)(struct cgroup_subsys_state * , struct cgroup_taskset * ) ;
   void (*cancel_attach)(struct cgroup_subsys_state * , struct cgroup_taskset * ) ;
   void (*attach)(struct cgroup_subsys_state * , struct cgroup_taskset * ) ;
   void (*fork)(struct task_struct * ) ;
   void (*exit)(struct cgroup_subsys_state * , struct cgroup_subsys_state * , struct task_struct * ) ;
   void (*bind)(struct cgroup_subsys_state * ) ;
   int disabled ;
   int early_init ;
   bool broken_hierarchy ;
   bool warned_broken_hierarchy ;
   int id ;
   char const *name ;
   struct cgroup_root *root ;
   struct idr css_idr ;
   struct list_head cfts ;
   struct cftype *dfl_cftypes ;
   struct cftype *legacy_cftypes ;
   unsigned int depends_on ;
};
struct futex_pi_state;
struct robust_list_head;
struct bio_list;
struct fs_struct;
struct perf_event_context;
struct blk_plug;
struct nameidata;
struct cfs_rq;
struct task_group;
struct sighand_struct {
   atomic_t count ;
   struct k_sigaction action[64U] ;
   spinlock_t siglock ;
   wait_queue_head_t signalfd_wqh ;
};
struct pacct_struct {
   int ac_flag ;
   long ac_exitcode ;
   unsigned long ac_mem ;
   cputime_t ac_utime ;
   cputime_t ac_stime ;
   unsigned long ac_minflt ;
   unsigned long ac_majflt ;
};
struct cpu_itimer {
   cputime_t expires ;
   cputime_t incr ;
   u32 error ;
   u32 incr_error ;
};
struct cputime {
   cputime_t utime ;
   cputime_t stime ;
};
struct task_cputime {
   cputime_t utime ;
   cputime_t stime ;
   unsigned long long sum_exec_runtime ;
};
struct task_cputime_atomic {
   atomic64_t utime ;
   atomic64_t stime ;
   atomic64_t sum_exec_runtime ;
};
struct thread_group_cputimer {
   struct task_cputime_atomic cputime_atomic ;
   int running ;
};
struct autogroup;
struct tty_struct;
struct taskstats;
struct tty_audit_buf;
struct signal_struct {
   atomic_t sigcnt ;
   atomic_t live ;
   int nr_threads ;
   struct list_head thread_head ;
   wait_queue_head_t wait_chldexit ;
   struct task_struct *curr_target ;
   struct sigpending shared_pending ;
   int group_exit_code ;
   int notify_count ;
   struct task_struct *group_exit_task ;
   int group_stop_count ;
   unsigned int flags ;
   unsigned char is_child_subreaper : 1 ;
   unsigned char has_child_subreaper : 1 ;
   int posix_timer_id ;
   struct list_head posix_timers ;
   struct hrtimer real_timer ;
   struct pid *leader_pid ;
   ktime_t it_real_incr ;
   struct cpu_itimer it[2U] ;
   struct thread_group_cputimer cputimer ;
   struct task_cputime cputime_expires ;
   struct list_head cpu_timers[3U] ;
   struct pid *tty_old_pgrp ;
   int leader ;
   struct tty_struct *tty ;
   struct autogroup *autogroup ;
   seqlock_t stats_lock ;
   cputime_t utime ;
   cputime_t stime ;
   cputime_t cutime ;
   cputime_t cstime ;
   cputime_t gtime ;
   cputime_t cgtime ;
   struct cputime prev_cputime ;
   unsigned long nvcsw ;
   unsigned long nivcsw ;
   unsigned long cnvcsw ;
   unsigned long cnivcsw ;
   unsigned long min_flt ;
   unsigned long maj_flt ;
   unsigned long cmin_flt ;
   unsigned long cmaj_flt ;
   unsigned long inblock ;
   unsigned long oublock ;
   unsigned long cinblock ;
   unsigned long coublock ;
   unsigned long maxrss ;
   unsigned long cmaxrss ;
   struct task_io_accounting ioac ;
   unsigned long long sum_sched_runtime ;
   struct rlimit rlim[16U] ;
   struct pacct_struct pacct ;
   struct taskstats *stats ;
   unsigned int audit_tty ;
   unsigned int audit_tty_log_passwd ;
   struct tty_audit_buf *tty_audit_buf ;
   oom_flags_t oom_flags ;
   short oom_score_adj ;
   short oom_score_adj_min ;
   struct mutex cred_guard_mutex ;
};
struct user_struct {
   atomic_t __count ;
   atomic_t processes ;
   atomic_t sigpending ;
   atomic_t inotify_watches ;
   atomic_t inotify_devs ;
   atomic_t fanotify_listeners ;
   atomic_long_t epoll_watches ;
   unsigned long mq_bytes ;
   unsigned long locked_shm ;
   struct key *uid_keyring ;
   struct key *session_keyring ;
   struct hlist_node uidhash_node ;
   kuid_t uid ;
   atomic_long_t locked_vm ;
};
struct backing_dev_info;
struct reclaim_state;
struct sched_info {
   unsigned long pcount ;
   unsigned long long run_delay ;
   unsigned long long last_arrival ;
   unsigned long long last_queued ;
};
struct task_delay_info {
   spinlock_t lock ;
   unsigned int flags ;
   u64 blkio_start ;
   u64 blkio_delay ;
   u64 swapin_delay ;
   u32 blkio_count ;
   u32 swapin_count ;
   u64 freepages_start ;
   u64 freepages_delay ;
   u32 freepages_count ;
};
struct wake_q_node {
   struct wake_q_node *next ;
};
struct io_context;
struct pipe_inode_info;
struct uts_namespace;
struct load_weight {
   unsigned long weight ;
   u32 inv_weight ;
};
struct sched_avg {
   u64 last_runnable_update ;
   s64 decay_count ;
   unsigned long load_avg_contrib ;
   unsigned long utilization_avg_contrib ;
   u32 runnable_avg_sum ;
   u32 avg_period ;
   u32 running_avg_sum ;
};
struct sched_statistics {
   u64 wait_start ;
   u64 wait_max ;
   u64 wait_count ;
   u64 wait_sum ;
   u64 iowait_count ;
   u64 iowait_sum ;
   u64 sleep_start ;
   u64 sleep_max ;
   s64 sum_sleep_runtime ;
   u64 block_start ;
   u64 block_max ;
   u64 exec_max ;
   u64 slice_max ;
   u64 nr_migrations_cold ;
   u64 nr_failed_migrations_affine ;
   u64 nr_failed_migrations_running ;
   u64 nr_failed_migrations_hot ;
   u64 nr_forced_migrations ;
   u64 nr_wakeups ;
   u64 nr_wakeups_sync ;
   u64 nr_wakeups_migrate ;
   u64 nr_wakeups_local ;
   u64 nr_wakeups_remote ;
   u64 nr_wakeups_affine ;
   u64 nr_wakeups_affine_attempts ;
   u64 nr_wakeups_passive ;
   u64 nr_wakeups_idle ;
};
struct sched_entity {
   struct load_weight load ;
   struct rb_node run_node ;
   struct list_head group_node ;
   unsigned int on_rq ;
   u64 exec_start ;
   u64 sum_exec_runtime ;
   u64 vruntime ;
   u64 prev_sum_exec_runtime ;
   u64 nr_migrations ;
   struct sched_statistics statistics ;
   int depth ;
   struct sched_entity *parent ;
   struct cfs_rq *cfs_rq ;
   struct cfs_rq *my_q ;
   struct sched_avg avg ;
};
struct rt_rq;
struct sched_rt_entity {
   struct list_head run_list ;
   unsigned long timeout ;
   unsigned long watchdog_stamp ;
   unsigned int time_slice ;
   struct sched_rt_entity *back ;
   struct sched_rt_entity *parent ;
   struct rt_rq *rt_rq ;
   struct rt_rq *my_q ;
};
struct sched_dl_entity {
   struct rb_node rb_node ;
   u64 dl_runtime ;
   u64 dl_deadline ;
   u64 dl_period ;
   u64 dl_bw ;
   s64 runtime ;
   u64 deadline ;
   unsigned int flags ;
   int dl_throttled ;
   int dl_new ;
   int dl_boosted ;
   int dl_yielded ;
   struct hrtimer dl_timer ;
};
struct memcg_oom_info {
   struct mem_cgroup *memcg ;
   gfp_t gfp_mask ;
   int order ;
   unsigned char may_oom : 1 ;
};
struct sched_class;
struct files_struct;
struct compat_robust_list_head;
struct numa_group;
struct ftrace_ret_stack;
struct task_struct {
   long volatile state ;
   void *stack ;
   atomic_t usage ;
   unsigned int flags ;
   unsigned int ptrace ;
   struct llist_node wake_entry ;
   int on_cpu ;
   struct task_struct *last_wakee ;
   unsigned long wakee_flips ;
   unsigned long wakee_flip_decay_ts ;
   int wake_cpu ;
   int on_rq ;
   int prio ;
   int static_prio ;
   int normal_prio ;
   unsigned int rt_priority ;
   struct sched_class const *sched_class ;
   struct sched_entity se ;
   struct sched_rt_entity rt ;
   struct task_group *sched_task_group ;
   struct sched_dl_entity dl ;
   struct hlist_head preempt_notifiers ;
   unsigned int btrace_seq ;
   unsigned int policy ;
   int nr_cpus_allowed ;
   cpumask_t cpus_allowed ;
   unsigned long rcu_tasks_nvcsw ;
   bool rcu_tasks_holdout ;
   struct list_head rcu_tasks_holdout_list ;
   int rcu_tasks_idle_cpu ;
   struct sched_info sched_info ;
   struct list_head tasks ;
   struct plist_node pushable_tasks ;
   struct rb_node pushable_dl_tasks ;
   struct mm_struct *mm ;
   struct mm_struct *active_mm ;
   u32 vmacache_seqnum ;
   struct vm_area_struct *vmacache[4U] ;
   struct task_rss_stat rss_stat ;
   int exit_state ;
   int exit_code ;
   int exit_signal ;
   int pdeath_signal ;
   unsigned long jobctl ;
   unsigned int personality ;
   unsigned char in_execve : 1 ;
   unsigned char in_iowait : 1 ;
   unsigned char sched_reset_on_fork : 1 ;
   unsigned char sched_contributes_to_load : 1 ;
   unsigned char sched_migrated : 1 ;
   unsigned char memcg_kmem_skip_account : 1 ;
   unsigned char brk_randomized : 1 ;
   unsigned long atomic_flags ;
   struct restart_block restart_block ;
   pid_t pid ;
   pid_t tgid ;
   struct task_struct *real_parent ;
   struct task_struct *parent ;
   struct list_head children ;
   struct list_head sibling ;
   struct task_struct *group_leader ;
   struct list_head ptraced ;
   struct list_head ptrace_entry ;
   struct pid_link pids[3U] ;
   struct list_head thread_group ;
   struct list_head thread_node ;
   struct completion *vfork_done ;
   int *set_child_tid ;
   int *clear_child_tid ;
   cputime_t utime ;
   cputime_t stime ;
   cputime_t utimescaled ;
   cputime_t stimescaled ;
   cputime_t gtime ;
   struct cputime prev_cputime ;
   unsigned long nvcsw ;
   unsigned long nivcsw ;
   u64 start_time ;
   u64 real_start_time ;
   unsigned long min_flt ;
   unsigned long maj_flt ;
   struct task_cputime cputime_expires ;
   struct list_head cpu_timers[3U] ;
   struct cred const *real_cred ;
   struct cred const *cred ;
   char comm[16U] ;
   struct nameidata *nameidata ;
   struct sysv_sem sysvsem ;
   struct sysv_shm sysvshm ;
   unsigned long last_switch_count ;
   struct thread_struct thread ;
   struct fs_struct *fs ;
   struct files_struct *files ;
   struct nsproxy *nsproxy ;
   struct signal_struct *signal ;
   struct sighand_struct *sighand ;
   sigset_t blocked ;
   sigset_t real_blocked ;
   sigset_t saved_sigmask ;
   struct sigpending pending ;
   unsigned long sas_ss_sp ;
   size_t sas_ss_size ;
   int (*notifier)(void * ) ;
   void *notifier_data ;
   sigset_t *notifier_mask ;
   struct callback_head *task_works ;
   struct audit_context *audit_context ;
   kuid_t loginuid ;
   unsigned int sessionid ;
   struct seccomp seccomp ;
   u32 parent_exec_id ;
   u32 self_exec_id ;
   spinlock_t alloc_lock ;
   raw_spinlock_t pi_lock ;
   struct wake_q_node wake_q ;
   struct rb_root pi_waiters ;
   struct rb_node *pi_waiters_leftmost ;
   struct rt_mutex_waiter *pi_blocked_on ;
   struct mutex_waiter *blocked_on ;
   unsigned int irq_events ;
   unsigned long hardirq_enable_ip ;
   unsigned long hardirq_disable_ip ;
   unsigned int hardirq_enable_event ;
   unsigned int hardirq_disable_event ;
   int hardirqs_enabled ;
   int hardirq_context ;
   unsigned long softirq_disable_ip ;
   unsigned long softirq_enable_ip ;
   unsigned int softirq_disable_event ;
   unsigned int softirq_enable_event ;
   int softirqs_enabled ;
   int softirq_context ;
   u64 curr_chain_key ;
   int lockdep_depth ;
   unsigned int lockdep_recursion ;
   struct held_lock held_locks[48U] ;
   gfp_t lockdep_reclaim_gfp ;
   void *journal_info ;
   struct bio_list *bio_list ;
   struct blk_plug *plug ;
   struct reclaim_state *reclaim_state ;
   struct backing_dev_info *backing_dev_info ;
   struct io_context *io_context ;
   unsigned long ptrace_message ;
   siginfo_t *last_siginfo ;
   struct task_io_accounting ioac ;
   u64 acct_rss_mem1 ;
   u64 acct_vm_mem1 ;
   cputime_t acct_timexpd ;
   nodemask_t mems_allowed ;
   seqcount_t mems_allowed_seq ;
   int cpuset_mem_spread_rotor ;
   int cpuset_slab_spread_rotor ;
   struct css_set *cgroups ;
   struct list_head cg_list ;
   struct robust_list_head *robust_list ;
   struct compat_robust_list_head *compat_robust_list ;
   struct list_head pi_state_list ;
   struct futex_pi_state *pi_state_cache ;
   struct perf_event_context *perf_event_ctxp[2U] ;
   struct mutex perf_event_mutex ;
   struct list_head perf_event_list ;
   struct mempolicy *mempolicy ;
   short il_next ;
   short pref_node_fork ;
   int numa_scan_seq ;
   unsigned int numa_scan_period ;
   unsigned int numa_scan_period_max ;
   int numa_preferred_nid ;
   unsigned long numa_migrate_retry ;
   u64 node_stamp ;
   u64 last_task_numa_placement ;
   u64 last_sum_exec_runtime ;
   struct callback_head numa_work ;
   struct list_head numa_entry ;
   struct numa_group *numa_group ;
   unsigned long *numa_faults ;
   unsigned long total_numa_faults ;
   unsigned long numa_faults_locality[3U] ;
   unsigned long numa_pages_migrated ;
   struct callback_head rcu ;
   struct pipe_inode_info *splice_pipe ;
   struct page_frag task_frag ;
   struct task_delay_info *delays ;
   int make_it_fail ;
   int nr_dirtied ;
   int nr_dirtied_pause ;
   unsigned long dirty_paused_when ;
   int latency_record_count ;
   struct latency_record latency_record[32U] ;
   unsigned long timer_slack_ns ;
   unsigned long default_timer_slack_ns ;
   unsigned int kasan_depth ;
   int curr_ret_stack ;
   struct ftrace_ret_stack *ret_stack ;
   unsigned long long ftrace_timestamp ;
   atomic_t trace_overrun ;
   atomic_t tracing_graph_pause ;
   unsigned long trace ;
   unsigned long trace_recursion ;
   struct memcg_oom_info memcg_oom ;
   struct uprobe_task *utask ;
   unsigned int sequential_io ;
   unsigned int sequential_io_avg ;
   unsigned long task_state_change ;
   int pagefault_disabled ;
};
struct hci_uart;
struct proc_dir_entry;
struct exception_table_entry {
   int insn ;
   int fixup ;
};
struct tasklet_struct {
   struct tasklet_struct *next ;
   unsigned long state ;
   atomic_t count ;
   void (*func)(unsigned long ) ;
   unsigned long data ;
};
struct shrink_control {
   gfp_t gfp_mask ;
   unsigned long nr_to_scan ;
   int nid ;
   struct mem_cgroup *memcg ;
};
struct shrinker {
   unsigned long (*count_objects)(struct shrinker * , struct shrink_control * ) ;
   unsigned long (*scan_objects)(struct shrinker * , struct shrink_control * ) ;
   int seeks ;
   long batch ;
   unsigned long flags ;
   struct list_head list ;
   atomic_long_t *nr_deferred ;
};
struct file_ra_state;
struct writeback_control;
struct bdi_writeback;
struct vm_fault {
   unsigned int flags ;
   unsigned long pgoff ;
   void *virtual_address ;
   struct page *cow_page ;
   struct page *page ;
   unsigned long max_pgoff ;
   pte_t *pte ;
};
struct vm_operations_struct {
   void (*open)(struct vm_area_struct * ) ;
   void (*close)(struct vm_area_struct * ) ;
   int (*fault)(struct vm_area_struct * , struct vm_fault * ) ;
   void (*map_pages)(struct vm_area_struct * , struct vm_fault * ) ;
   int (*page_mkwrite)(struct vm_area_struct * , struct vm_fault * ) ;
   int (*pfn_mkwrite)(struct vm_area_struct * , struct vm_fault * ) ;
   int (*access)(struct vm_area_struct * , unsigned long , void * , int , int ) ;
   char const *(*name)(struct vm_area_struct * ) ;
   int (*set_policy)(struct vm_area_struct * , struct mempolicy * ) ;
   struct mempolicy *(*get_policy)(struct vm_area_struct * , unsigned long ) ;
   struct page *(*find_special_page)(struct vm_area_struct * , unsigned long ) ;
};
struct kvec;
struct mnt_namespace;
struct ipc_namespace;
struct net;
struct nsproxy {
   atomic_t count ;
   struct uts_namespace *uts_ns ;
   struct ipc_namespace *ipc_ns ;
   struct mnt_namespace *mnt_ns ;
   struct pid_namespace *pid_ns_for_children ;
   struct net *net_ns ;
};
struct proc_ns_operations;
struct ns_common {
   atomic_long_t stashed ;
   struct proc_ns_operations const *ops ;
   unsigned int inum ;
};
struct pidmap {
   atomic_t nr_free ;
   void *page ;
};
struct fs_pin;
struct vfsmount;
struct pid_namespace {
   struct kref kref ;
   struct pidmap pidmap[128U] ;
   struct callback_head rcu ;
   int last_pid ;
   unsigned int nr_hashed ;
   struct task_struct *child_reaper ;
   struct kmem_cache *pid_cachep ;
   unsigned int level ;
   struct pid_namespace *parent ;
   struct vfsmount *proc_mnt ;
   struct dentry *proc_self ;
   struct dentry *proc_thread_self ;
   struct fs_pin *bacct ;
   struct user_namespace *user_ns ;
   struct work_struct proc_work ;
   kgid_t pid_gid ;
   int hide_pid ;
   int reboot ;
   struct ns_common ns ;
};
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct __anonstruct____missing_field_name_232 {
   spinlock_t lock ;
   int count ;
};
union __anonunion____missing_field_name_231 {
   struct __anonstruct____missing_field_name_232 __annonCompField65 ;
};
struct lockref {
   union __anonunion____missing_field_name_231 __annonCompField66 ;
};
struct path;
struct __anonstruct____missing_field_name_234 {
   u32 hash ;
   u32 len ;
};
union __anonunion____missing_field_name_233 {
   struct __anonstruct____missing_field_name_234 __annonCompField67 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion____missing_field_name_233 __annonCompField68 ;
   unsigned char const *name ;
};
struct dentry_operations;
union __anonunion_d_u_235 {
   struct hlist_node d_alias ;
   struct callback_head d_rcu ;
};
struct dentry {
   unsigned int d_flags ;
   seqcount_t d_seq ;
   struct hlist_bl_node d_hash ;
   struct dentry *d_parent ;
   struct qstr d_name ;
   struct inode *d_inode ;
   unsigned char d_iname[32U] ;
   struct lockref d_lockref ;
   struct dentry_operations const *d_op ;
   struct super_block *d_sb ;
   unsigned long d_time ;
   void *d_fsdata ;
   struct list_head d_lru ;
   struct list_head d_child ;
   struct list_head d_subdirs ;
   union __anonunion_d_u_235 d_u ;
};
struct dentry_operations {
   int (*d_revalidate)(struct dentry * , unsigned int ) ;
   int (*d_weak_revalidate)(struct dentry * , unsigned int ) ;
   int (*d_hash)(struct dentry const * , struct qstr * ) ;
   int (*d_compare)(struct dentry const * , struct dentry const * , unsigned int ,
                    char const * , struct qstr const * ) ;
   int (*d_delete)(struct dentry const * ) ;
   void (*d_release)(struct dentry * ) ;
   void (*d_prune)(struct dentry * ) ;
   void (*d_iput)(struct dentry * , struct inode * ) ;
   char *(*d_dname)(struct dentry * , char * , int ) ;
   struct vfsmount *(*d_automount)(struct path * ) ;
   int (*d_manage)(struct dentry * , bool ) ;
   struct inode *(*d_select_inode)(struct dentry * , unsigned int ) ;
};
struct path {
   struct vfsmount *mnt ;
   struct dentry *dentry ;
};
struct list_lru_one {
   struct list_head list ;
   long nr_items ;
};
struct list_lru_memcg {
   struct list_lru_one *lru[0U] ;
};
struct list_lru_node {
   spinlock_t lock ;
   struct list_lru_one lru ;
   struct list_lru_memcg *memcg_lrus ;
};
struct list_lru {
   struct list_lru_node *node ;
   struct list_head list ;
};
struct __anonstruct____missing_field_name_239 {
   struct radix_tree_node *parent ;
   void *private_data ;
};
union __anonunion____missing_field_name_238 {
   struct __anonstruct____missing_field_name_239 __annonCompField69 ;
   struct callback_head callback_head ;
};
struct radix_tree_node {
   unsigned int path ;
   unsigned int count ;
   union __anonunion____missing_field_name_238 __annonCompField70 ;
   struct list_head private_list ;
   void *slots[64U] ;
   unsigned long tags[3U][1U] ;
};
struct radix_tree_root {
   unsigned int height ;
   gfp_t gfp_mask ;
   struct radix_tree_node *rnode ;
};
struct fiemap_extent {
   __u64 fe_logical ;
   __u64 fe_physical ;
   __u64 fe_length ;
   __u64 fe_reserved64[2U] ;
   __u32 fe_flags ;
   __u32 fe_reserved[3U] ;
};
enum migrate_mode {
    MIGRATE_ASYNC = 0,
    MIGRATE_SYNC_LIGHT = 1,
    MIGRATE_SYNC = 2
} ;
struct block_device;
struct bio_vec {
   struct page *bv_page ;
   unsigned int bv_len ;
   unsigned int bv_offset ;
};
struct export_operations;
struct iovec;
struct kiocb;
struct poll_table_struct;
struct kstatfs;
struct swap_info_struct;
struct iov_iter;
struct iattr {
   unsigned int ia_valid ;
   umode_t ia_mode ;
   kuid_t ia_uid ;
   kgid_t ia_gid ;
   loff_t ia_size ;
   struct timespec ia_atime ;
   struct timespec ia_mtime ;
   struct timespec ia_ctime ;
   struct file *ia_file ;
};
struct dquot;
typedef __kernel_uid32_t projid_t;
struct __anonstruct_kprojid_t_243 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_243 kprojid_t;
enum quota_type {
    USRQUOTA = 0,
    GRPQUOTA = 1,
    PRJQUOTA = 2
} ;
typedef long long qsize_t;
union __anonunion____missing_field_name_244 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion____missing_field_name_244 __annonCompField72 ;
   enum quota_type type ;
};
struct mem_dqblk {
   qsize_t dqb_bhardlimit ;
   qsize_t dqb_bsoftlimit ;
   qsize_t dqb_curspace ;
   qsize_t dqb_rsvspace ;
   qsize_t dqb_ihardlimit ;
   qsize_t dqb_isoftlimit ;
   qsize_t dqb_curinodes ;
   time_t dqb_btime ;
   time_t dqb_itime ;
};
struct quota_format_type;
struct mem_dqinfo {
   struct quota_format_type *dqi_format ;
   int dqi_fmt_id ;
   struct list_head dqi_dirty_list ;
   unsigned long dqi_flags ;
   unsigned int dqi_bgrace ;
   unsigned int dqi_igrace ;
   qsize_t dqi_max_spc_limit ;
   qsize_t dqi_max_ino_limit ;
   void *dqi_priv ;
};
struct dquot {
   struct hlist_node dq_hash ;
   struct list_head dq_inuse ;
   struct list_head dq_free ;
   struct list_head dq_dirty ;
   struct mutex dq_lock ;
   atomic_t dq_count ;
   wait_queue_head_t dq_wait_unused ;
   struct super_block *dq_sb ;
   struct kqid dq_id ;
   loff_t dq_off ;
   unsigned long dq_flags ;
   struct mem_dqblk dq_dqb ;
};
struct quota_format_ops {
   int (*check_quota_file)(struct super_block * , int ) ;
   int (*read_file_info)(struct super_block * , int ) ;
   int (*write_file_info)(struct super_block * , int ) ;
   int (*free_file_info)(struct super_block * , int ) ;
   int (*read_dqblk)(struct dquot * ) ;
   int (*commit_dqblk)(struct dquot * ) ;
   int (*release_dqblk)(struct dquot * ) ;
};
struct dquot_operations {
   int (*write_dquot)(struct dquot * ) ;
   struct dquot *(*alloc_dquot)(struct super_block * , int ) ;
   void (*destroy_dquot)(struct dquot * ) ;
   int (*acquire_dquot)(struct dquot * ) ;
   int (*release_dquot)(struct dquot * ) ;
   int (*mark_dirty)(struct dquot * ) ;
   int (*write_info)(struct super_block * , int ) ;
   qsize_t *(*get_reserved_space)(struct inode * ) ;
   int (*get_projid)(struct inode * , kprojid_t * ) ;
};
struct qc_dqblk {
   int d_fieldmask ;
   u64 d_spc_hardlimit ;
   u64 d_spc_softlimit ;
   u64 d_ino_hardlimit ;
   u64 d_ino_softlimit ;
   u64 d_space ;
   u64 d_ino_count ;
   s64 d_ino_timer ;
   s64 d_spc_timer ;
   int d_ino_warns ;
   int d_spc_warns ;
   u64 d_rt_spc_hardlimit ;
   u64 d_rt_spc_softlimit ;
   u64 d_rt_space ;
   s64 d_rt_spc_timer ;
   int d_rt_spc_warns ;
};
struct qc_type_state {
   unsigned int flags ;
   unsigned int spc_timelimit ;
   unsigned int ino_timelimit ;
   unsigned int rt_spc_timelimit ;
   unsigned int spc_warnlimit ;
   unsigned int ino_warnlimit ;
   unsigned int rt_spc_warnlimit ;
   unsigned long long ino ;
   blkcnt_t blocks ;
   blkcnt_t nextents ;
};
struct qc_state {
   unsigned int s_incoredqs ;
   struct qc_type_state s_state[3U] ;
};
struct qc_info {
   int i_fieldmask ;
   unsigned int i_flags ;
   unsigned int i_spc_timelimit ;
   unsigned int i_ino_timelimit ;
   unsigned int i_rt_spc_timelimit ;
   unsigned int i_spc_warnlimit ;
   unsigned int i_ino_warnlimit ;
   unsigned int i_rt_spc_warnlimit ;
};
struct quotactl_ops {
   int (*quota_on)(struct super_block * , int , int , struct path * ) ;
   int (*quota_off)(struct super_block * , int ) ;
   int (*quota_enable)(struct super_block * , unsigned int ) ;
   int (*quota_disable)(struct super_block * , unsigned int ) ;
   int (*quota_sync)(struct super_block * , int ) ;
   int (*set_info)(struct super_block * , int , struct qc_info * ) ;
   int (*get_dqblk)(struct super_block * , struct kqid , struct qc_dqblk * ) ;
   int (*set_dqblk)(struct super_block * , struct kqid , struct qc_dqblk * ) ;
   int (*get_state)(struct super_block * , struct qc_state * ) ;
   int (*rm_xquota)(struct super_block * , unsigned int ) ;
};
struct quota_format_type {
   int qf_fmt_id ;
   struct quota_format_ops const *qf_ops ;
   struct module *qf_owner ;
   struct quota_format_type *qf_next ;
};
struct quota_info {
   unsigned int flags ;
   struct mutex dqio_mutex ;
   struct mutex dqonoff_mutex ;
   struct inode *files[3U] ;
   struct mem_dqinfo info[3U] ;
   struct quota_format_ops const *ops[3U] ;
};
struct kiocb {
   struct file *ki_filp ;
   loff_t ki_pos ;
   void (*ki_complete)(struct kiocb * , long , long ) ;
   void *private ;
   int ki_flags ;
};
struct address_space_operations {
   int (*writepage)(struct page * , struct writeback_control * ) ;
   int (*readpage)(struct file * , struct page * ) ;
   int (*writepages)(struct address_space * , struct writeback_control * ) ;
   int (*set_page_dirty)(struct page * ) ;
   int (*readpages)(struct file * , struct address_space * , struct list_head * ,
                    unsigned int ) ;
   int (*write_begin)(struct file * , struct address_space * , loff_t , unsigned int ,
                      unsigned int , struct page ** , void ** ) ;
   int (*write_end)(struct file * , struct address_space * , loff_t , unsigned int ,
                    unsigned int , struct page * , void * ) ;
   sector_t (*bmap)(struct address_space * , sector_t ) ;
   void (*invalidatepage)(struct page * , unsigned int , unsigned int ) ;
   int (*releasepage)(struct page * , gfp_t ) ;
   void (*freepage)(struct page * ) ;
   ssize_t (*direct_IO)(struct kiocb * , struct iov_iter * , loff_t ) ;
   int (*migratepage)(struct address_space * , struct page * , struct page * , enum migrate_mode ) ;
   int (*launder_page)(struct page * ) ;
   int (*is_partially_uptodate)(struct page * , unsigned long , unsigned long ) ;
   void (*is_dirty_writeback)(struct page * , bool * , bool * ) ;
   int (*error_remove_page)(struct address_space * , struct page * ) ;
   int (*swap_activate)(struct swap_info_struct * , struct file * , sector_t * ) ;
   void (*swap_deactivate)(struct file * ) ;
};
struct address_space {
   struct inode *host ;
   struct radix_tree_root page_tree ;
   spinlock_t tree_lock ;
   atomic_t i_mmap_writable ;
   struct rb_root i_mmap ;
   struct rw_semaphore i_mmap_rwsem ;
   unsigned long nrpages ;
   unsigned long nrshadows ;
   unsigned long writeback_index ;
   struct address_space_operations const *a_ops ;
   unsigned long flags ;
   spinlock_t private_lock ;
   struct list_head private_list ;
   void *private_data ;
};
struct request_queue;
struct hd_struct;
struct gendisk;
struct block_device {
   dev_t bd_dev ;
   int bd_openers ;
   struct inode *bd_inode ;
   struct super_block *bd_super ;
   struct mutex bd_mutex ;
   struct list_head bd_inodes ;
   void *bd_claiming ;
   void *bd_holder ;
   int bd_holders ;
   bool bd_write_holder ;
   struct list_head bd_holder_disks ;
   struct block_device *bd_contains ;
   unsigned int bd_block_size ;
   struct hd_struct *bd_part ;
   unsigned int bd_part_count ;
   int bd_invalidated ;
   struct gendisk *bd_disk ;
   struct request_queue *bd_queue ;
   struct list_head bd_list ;
   unsigned long bd_private ;
   int bd_fsfreeze_count ;
   struct mutex bd_fsfreeze_mutex ;
};
struct posix_acl;
struct inode_operations;
union __anonunion____missing_field_name_247 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion____missing_field_name_248 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock_context;
struct cdev;
union __anonunion____missing_field_name_249 {
   struct pipe_inode_info *i_pipe ;
   struct block_device *i_bdev ;
   struct cdev *i_cdev ;
   char *i_link ;
};
struct inode {
   umode_t i_mode ;
   unsigned short i_opflags ;
   kuid_t i_uid ;
   kgid_t i_gid ;
   unsigned int i_flags ;
   struct posix_acl *i_acl ;
   struct posix_acl *i_default_acl ;
   struct inode_operations const *i_op ;
   struct super_block *i_sb ;
   struct address_space *i_mapping ;
   void *i_security ;
   unsigned long i_ino ;
   union __anonunion____missing_field_name_247 __annonCompField73 ;
   dev_t i_rdev ;
   loff_t i_size ;
   struct timespec i_atime ;
   struct timespec i_mtime ;
   struct timespec i_ctime ;
   spinlock_t i_lock ;
   unsigned short i_bytes ;
   unsigned int i_blkbits ;
   blkcnt_t i_blocks ;
   unsigned long i_state ;
   struct mutex i_mutex ;
   unsigned long dirtied_when ;
   unsigned long dirtied_time_when ;
   struct hlist_node i_hash ;
   struct list_head i_wb_list ;
   struct bdi_writeback *i_wb ;
   int i_wb_frn_winner ;
   u16 i_wb_frn_avg_time ;
   u16 i_wb_frn_history ;
   struct list_head i_lru ;
   struct list_head i_sb_list ;
   union __anonunion____missing_field_name_248 __annonCompField74 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   atomic_t i_readcount ;
   struct file_operations const *i_fop ;
   struct file_lock_context *i_flctx ;
   struct address_space i_data ;
   struct list_head i_devices ;
   union __anonunion____missing_field_name_249 __annonCompField75 ;
   __u32 i_generation ;
   __u32 i_fsnotify_mask ;
   struct hlist_head i_fsnotify_marks ;
   void *i_private ;
};
struct fown_struct {
   rwlock_t lock ;
   struct pid *pid ;
   enum pid_type pid_type ;
   kuid_t uid ;
   kuid_t euid ;
   int signum ;
};
struct file_ra_state {
   unsigned long start ;
   unsigned int size ;
   unsigned int async_size ;
   unsigned int ra_pages ;
   unsigned int mmap_miss ;
   loff_t prev_pos ;
};
union __anonunion_f_u_250 {
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_250 f_u ;
   struct path f_path ;
   struct inode *f_inode ;
   struct file_operations const *f_op ;
   spinlock_t f_lock ;
   atomic_long_t f_count ;
   unsigned int f_flags ;
   fmode_t f_mode ;
   struct mutex f_pos_lock ;
   loff_t f_pos ;
   struct fown_struct f_owner ;
   struct cred const *f_cred ;
   struct file_ra_state f_ra ;
   u64 f_version ;
   void *f_security ;
   void *private_data ;
   struct list_head f_ep_links ;
   struct list_head f_tfile_llink ;
   struct address_space *f_mapping ;
};
typedef void *fl_owner_t;
struct file_lock;
struct file_lock_operations {
   void (*fl_copy_lock)(struct file_lock * , struct file_lock * ) ;
   void (*fl_release_private)(struct file_lock * ) ;
};
struct lock_manager_operations {
   int (*lm_compare_owner)(struct file_lock * , struct file_lock * ) ;
   unsigned long (*lm_owner_key)(struct file_lock * ) ;
   fl_owner_t (*lm_get_owner)(fl_owner_t ) ;
   void (*lm_put_owner)(fl_owner_t ) ;
   void (*lm_notify)(struct file_lock * ) ;
   int (*lm_grant)(struct file_lock * , int ) ;
   bool (*lm_break)(struct file_lock * ) ;
   int (*lm_change)(struct file_lock * , int , struct list_head * ) ;
   void (*lm_setup)(struct file_lock * , void ** ) ;
};
struct nlm_lockowner;
struct nfs_lock_info {
   u32 state ;
   struct nlm_lockowner *owner ;
   struct list_head list ;
};
struct nfs4_lock_state;
struct nfs4_lock_info {
   struct nfs4_lock_state *owner ;
};
struct fasync_struct;
struct __anonstruct_afs_252 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_251 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_252 afs ;
};
struct file_lock {
   struct file_lock *fl_next ;
   struct list_head fl_list ;
   struct hlist_node fl_link ;
   struct list_head fl_block ;
   fl_owner_t fl_owner ;
   unsigned int fl_flags ;
   unsigned char fl_type ;
   unsigned int fl_pid ;
   int fl_link_cpu ;
   struct pid *fl_nspid ;
   wait_queue_head_t fl_wait ;
   struct file *fl_file ;
   loff_t fl_start ;
   loff_t fl_end ;
   struct fasync_struct *fl_fasync ;
   unsigned long fl_break_time ;
   unsigned long fl_downgrade_time ;
   struct file_lock_operations const *fl_ops ;
   struct lock_manager_operations const *fl_lmops ;
   union __anonunion_fl_u_251 fl_u ;
};
struct file_lock_context {
   spinlock_t flc_lock ;
   struct list_head flc_flock ;
   struct list_head flc_posix ;
   struct list_head flc_lease ;
};
struct fasync_struct {
   spinlock_t fa_lock ;
   int magic ;
   int fa_fd ;
   struct fasync_struct *fa_next ;
   struct file *fa_file ;
   struct callback_head fa_rcu ;
};
struct sb_writers {
   struct percpu_counter counter[3U] ;
   wait_queue_head_t wait ;
   int frozen ;
   wait_queue_head_t wait_unfrozen ;
   struct lockdep_map lock_map[3U] ;
};
struct super_operations;
struct xattr_handler;
struct mtd_info;
struct super_block {
   struct list_head s_list ;
   dev_t s_dev ;
   unsigned char s_blocksize_bits ;
   unsigned long s_blocksize ;
   loff_t s_maxbytes ;
   struct file_system_type *s_type ;
   struct super_operations const *s_op ;
   struct dquot_operations const *dq_op ;
   struct quotactl_ops const *s_qcop ;
   struct export_operations const *s_export_op ;
   unsigned long s_flags ;
   unsigned long s_iflags ;
   unsigned long s_magic ;
   struct dentry *s_root ;
   struct rw_semaphore s_umount ;
   int s_count ;
   atomic_t s_active ;
   void *s_security ;
   struct xattr_handler const **s_xattr ;
   struct list_head s_inodes ;
   struct hlist_bl_head s_anon ;
   struct list_head s_mounts ;
   struct block_device *s_bdev ;
   struct backing_dev_info *s_bdi ;
   struct mtd_info *s_mtd ;
   struct hlist_node s_instances ;
   unsigned int s_quota_types ;
   struct quota_info s_dquot ;
   struct sb_writers s_writers ;
   char s_id[32U] ;
   u8 s_uuid[16U] ;
   void *s_fs_info ;
   unsigned int s_max_links ;
   fmode_t s_mode ;
   u32 s_time_gran ;
   struct mutex s_vfs_rename_mutex ;
   char *s_subtype ;
   char *s_options ;
   struct dentry_operations const *s_d_op ;
   int cleancache_poolid ;
   struct shrinker s_shrink ;
   atomic_long_t s_remove_count ;
   int s_readonly_remount ;
   struct workqueue_struct *s_dio_done_wq ;
   struct hlist_head s_pins ;
   struct list_lru s_dentry_lru ;
   struct list_lru s_inode_lru ;
   struct callback_head rcu ;
   int s_stack_depth ;
};
struct fiemap_extent_info {
   unsigned int fi_flags ;
   unsigned int fi_extents_mapped ;
   unsigned int fi_extents_max ;
   struct fiemap_extent *fi_extents_start ;
};
struct dir_context;
struct dir_context {
   int (*actor)(struct dir_context * , char const * , int , loff_t , u64 , unsigned int ) ;
   loff_t pos ;
};
struct file_operations {
   struct module *owner ;
   loff_t (*llseek)(struct file * , loff_t , int ) ;
   ssize_t (*read)(struct file * , char * , size_t , loff_t * ) ;
   ssize_t (*write)(struct file * , char const * , size_t , loff_t * ) ;
   ssize_t (*read_iter)(struct kiocb * , struct iov_iter * ) ;
   ssize_t (*write_iter)(struct kiocb * , struct iov_iter * ) ;
   int (*iterate)(struct file * , struct dir_context * ) ;
   unsigned int (*poll)(struct file * , struct poll_table_struct * ) ;
   long (*unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
   long (*compat_ioctl)(struct file * , unsigned int , unsigned long ) ;
   int (*mmap)(struct file * , struct vm_area_struct * ) ;
   int (*mremap)(struct file * , struct vm_area_struct * ) ;
   int (*open)(struct inode * , struct file * ) ;
   int (*flush)(struct file * , fl_owner_t ) ;
   int (*release)(struct inode * , struct file * ) ;
   int (*fsync)(struct file * , loff_t , loff_t , int ) ;
   int (*aio_fsync)(struct kiocb * , int ) ;
   int (*fasync)(int , struct file * , int ) ;
   int (*lock)(struct file * , int , struct file_lock * ) ;
   ssize_t (*sendpage)(struct file * , struct page * , int , size_t , loff_t * ,
                       int ) ;
   unsigned long (*get_unmapped_area)(struct file * , unsigned long , unsigned long ,
                                      unsigned long , unsigned long ) ;
   int (*check_flags)(int ) ;
   int (*flock)(struct file * , int , struct file_lock * ) ;
   ssize_t (*splice_write)(struct pipe_inode_info * , struct file * , loff_t * , size_t ,
                           unsigned int ) ;
   ssize_t (*splice_read)(struct file * , loff_t * , struct pipe_inode_info * , size_t ,
                          unsigned int ) ;
   int (*setlease)(struct file * , long , struct file_lock ** , void ** ) ;
   long (*fallocate)(struct file * , int , loff_t , loff_t ) ;
   void (*show_fdinfo)(struct seq_file * , struct file * ) ;
};
struct inode_operations {
   struct dentry *(*lookup)(struct inode * , struct dentry * , unsigned int ) ;
   char const *(*follow_link)(struct dentry * , void ** ) ;
   int (*permission)(struct inode * , int ) ;
   struct posix_acl *(*get_acl)(struct inode * , int ) ;
   int (*readlink)(struct dentry * , char * , int ) ;
   void (*put_link)(struct inode * , void * ) ;
   int (*create)(struct inode * , struct dentry * , umode_t , bool ) ;
   int (*link)(struct dentry * , struct inode * , struct dentry * ) ;
   int (*unlink)(struct inode * , struct dentry * ) ;
   int (*symlink)(struct inode * , struct dentry * , char const * ) ;
   int (*mkdir)(struct inode * , struct dentry * , umode_t ) ;
   int (*rmdir)(struct inode * , struct dentry * ) ;
   int (*mknod)(struct inode * , struct dentry * , umode_t , dev_t ) ;
   int (*rename)(struct inode * , struct dentry * , struct inode * , struct dentry * ) ;
   int (*rename2)(struct inode * , struct dentry * , struct inode * , struct dentry * ,
                  unsigned int ) ;
   int (*setattr)(struct dentry * , struct iattr * ) ;
   int (*getattr)(struct vfsmount * , struct dentry * , struct kstat * ) ;
   int (*setxattr)(struct dentry * , char const * , void const * , size_t , int ) ;
   ssize_t (*getxattr)(struct dentry * , char const * , void * , size_t ) ;
   ssize_t (*listxattr)(struct dentry * , char * , size_t ) ;
   int (*removexattr)(struct dentry * , char const * ) ;
   int (*fiemap)(struct inode * , struct fiemap_extent_info * , u64 , u64 ) ;
   int (*update_time)(struct inode * , struct timespec * , int ) ;
   int (*atomic_open)(struct inode * , struct dentry * , struct file * , unsigned int ,
                      umode_t , int * ) ;
   int (*tmpfile)(struct inode * , struct dentry * , umode_t ) ;
   int (*set_acl)(struct inode * , struct posix_acl * , int ) ;
};
struct super_operations {
   struct inode *(*alloc_inode)(struct super_block * ) ;
   void (*destroy_inode)(struct inode * ) ;
   void (*dirty_inode)(struct inode * , int ) ;
   int (*write_inode)(struct inode * , struct writeback_control * ) ;
   int (*drop_inode)(struct inode * ) ;
   void (*evict_inode)(struct inode * ) ;
   void (*put_super)(struct super_block * ) ;
   int (*sync_fs)(struct super_block * , int ) ;
   int (*freeze_super)(struct super_block * ) ;
   int (*freeze_fs)(struct super_block * ) ;
   int (*thaw_super)(struct super_block * ) ;
   int (*unfreeze_fs)(struct super_block * ) ;
   int (*statfs)(struct dentry * , struct kstatfs * ) ;
   int (*remount_fs)(struct super_block * , int * , char * ) ;
   void (*umount_begin)(struct super_block * ) ;
   int (*show_options)(struct seq_file * , struct dentry * ) ;
   int (*show_devname)(struct seq_file * , struct dentry * ) ;
   int (*show_path)(struct seq_file * , struct dentry * ) ;
   int (*show_stats)(struct seq_file * , struct dentry * ) ;
   ssize_t (*quota_read)(struct super_block * , int , char * , size_t , loff_t ) ;
   ssize_t (*quota_write)(struct super_block * , int , char const * , size_t ,
                          loff_t ) ;
   struct dquot **(*get_dquots)(struct inode * ) ;
   int (*bdev_try_to_free_page)(struct super_block * , struct page * , gfp_t ) ;
   long (*nr_cached_objects)(struct super_block * , struct shrink_control * ) ;
   long (*free_cached_objects)(struct super_block * , struct shrink_control * ) ;
};
struct file_system_type {
   char const *name ;
   int fs_flags ;
   struct dentry *(*mount)(struct file_system_type * , int , char const * , void * ) ;
   void (*kill_sb)(struct super_block * ) ;
   struct module *owner ;
   struct file_system_type *next ;
   struct hlist_head fs_supers ;
   struct lock_class_key s_lock_key ;
   struct lock_class_key s_umount_key ;
   struct lock_class_key s_vfs_rename_key ;
   struct lock_class_key s_writers_key[3U] ;
   struct lock_class_key i_lock_key ;
   struct lock_class_key i_mutex_key ;
   struct lock_class_key i_mutex_dir_key ;
};
struct pollfd {
   int fd ;
   short events ;
   short revents ;
};
struct poll_table_struct {
   void (*_qproc)(struct file * , wait_queue_head_t * , struct poll_table_struct * ) ;
   unsigned long _key ;
};
typedef struct poll_table_struct poll_table;
typedef unsigned char cc_t;
typedef unsigned int speed_t;
typedef unsigned int tcflag_t;
struct ktermios {
   tcflag_t c_iflag ;
   tcflag_t c_oflag ;
   tcflag_t c_cflag ;
   tcflag_t c_lflag ;
   cc_t c_line ;
   cc_t c_cc[19U] ;
   speed_t c_ispeed ;
   speed_t c_ospeed ;
};
struct winsize {
   unsigned short ws_row ;
   unsigned short ws_col ;
   unsigned short ws_xpixel ;
   unsigned short ws_ypixel ;
};
struct termiox {
   __u16 x_hflag ;
   __u16 x_cflag ;
   __u16 x_rflag[5U] ;
   __u16 x_sflag ;
};
struct cdev {
   struct kobject kobj ;
   struct module *owner ;
   struct file_operations const *ops ;
   struct list_head list ;
   dev_t dev ;
   unsigned int count ;
};
struct tty_driver;
struct serial_icounter_struct;
struct tty_operations {
   struct tty_struct *(*lookup)(struct tty_driver * , struct inode * , int ) ;
   int (*install)(struct tty_driver * , struct tty_struct * ) ;
   void (*remove)(struct tty_driver * , struct tty_struct * ) ;
   int (*open)(struct tty_struct * , struct file * ) ;
   void (*close)(struct tty_struct * , struct file * ) ;
   void (*shutdown)(struct tty_struct * ) ;
   void (*cleanup)(struct tty_struct * ) ;
   int (*write)(struct tty_struct * , unsigned char const * , int ) ;
   int (*put_char)(struct tty_struct * , unsigned char ) ;
   void (*flush_chars)(struct tty_struct * ) ;
   int (*write_room)(struct tty_struct * ) ;
   int (*chars_in_buffer)(struct tty_struct * ) ;
   int (*ioctl)(struct tty_struct * , unsigned int , unsigned long ) ;
   long (*compat_ioctl)(struct tty_struct * , unsigned int , unsigned long ) ;
   void (*set_termios)(struct tty_struct * , struct ktermios * ) ;
   void (*throttle)(struct tty_struct * ) ;
   void (*unthrottle)(struct tty_struct * ) ;
   void (*stop)(struct tty_struct * ) ;
   void (*start)(struct tty_struct * ) ;
   void (*hangup)(struct tty_struct * ) ;
   int (*break_ctl)(struct tty_struct * , int ) ;
   void (*flush_buffer)(struct tty_struct * ) ;
   void (*set_ldisc)(struct tty_struct * ) ;
   void (*wait_until_sent)(struct tty_struct * , int ) ;
   void (*send_xchar)(struct tty_struct * , char ) ;
   int (*tiocmget)(struct tty_struct * ) ;
   int (*tiocmset)(struct tty_struct * , unsigned int , unsigned int ) ;
   int (*resize)(struct tty_struct * , struct winsize * ) ;
   int (*set_termiox)(struct tty_struct * , struct termiox * ) ;
   int (*get_icount)(struct tty_struct * , struct serial_icounter_struct * ) ;
   int (*poll_init)(struct tty_driver * , int , char * ) ;
   int (*poll_get_char)(struct tty_driver * , int ) ;
   void (*poll_put_char)(struct tty_driver * , int , char ) ;
   struct file_operations const *proc_fops ;
};
struct tty_port;
struct tty_driver {
   int magic ;
   struct kref kref ;
   struct cdev *cdevs ;
   struct module *owner ;
   char const *driver_name ;
   char const *name ;
   int name_base ;
   int major ;
   int minor_start ;
   unsigned int num ;
   short type ;
   short subtype ;
   struct ktermios init_termios ;
   unsigned long flags ;
   struct proc_dir_entry *proc_entry ;
   struct tty_driver *other ;
   struct tty_struct **ttys ;
   struct tty_port **ports ;
   struct ktermios **termios ;
   void *driver_state ;
   struct tty_operations const *ops ;
   struct list_head tty_drivers ;
};
struct ld_semaphore {
   long count ;
   raw_spinlock_t wait_lock ;
   unsigned int wait_readers ;
   struct list_head read_wait ;
   struct list_head write_wait ;
   struct lockdep_map dep_map ;
};
struct tty_ldisc_ops {
   int magic ;
   char *name ;
   int num ;
   int flags ;
   int (*open)(struct tty_struct * ) ;
   void (*close)(struct tty_struct * ) ;
   void (*flush_buffer)(struct tty_struct * ) ;
   ssize_t (*chars_in_buffer)(struct tty_struct * ) ;
   ssize_t (*read)(struct tty_struct * , struct file * , unsigned char * , size_t ) ;
   ssize_t (*write)(struct tty_struct * , struct file * , unsigned char const * ,
                    size_t ) ;
   int (*ioctl)(struct tty_struct * , struct file * , unsigned int , unsigned long ) ;
   long (*compat_ioctl)(struct tty_struct * , struct file * , unsigned int , unsigned long ) ;
   void (*set_termios)(struct tty_struct * , struct ktermios * ) ;
   unsigned int (*poll)(struct tty_struct * , struct file * , struct poll_table_struct * ) ;
   int (*hangup)(struct tty_struct * ) ;
   void (*receive_buf)(struct tty_struct * , unsigned char const * , char * , int ) ;
   void (*write_wakeup)(struct tty_struct * ) ;
   void (*dcd_change)(struct tty_struct * , unsigned int ) ;
   void (*fasync)(struct tty_struct * , int ) ;
   int (*receive_buf2)(struct tty_struct * , unsigned char const * , char * , int ) ;
   struct module *owner ;
   int refcount ;
};
struct tty_ldisc {
   struct tty_ldisc_ops *ops ;
   struct tty_struct *tty ;
};
union __anonunion____missing_field_name_254 {
   struct tty_buffer *next ;
   struct llist_node free ;
};
struct tty_buffer {
   union __anonunion____missing_field_name_254 __annonCompField76 ;
   int used ;
   int size ;
   int commit ;
   int read ;
   int flags ;
   unsigned long data[0U] ;
};
struct tty_bufhead {
   struct tty_buffer *head ;
   struct work_struct work ;
   struct mutex lock ;
   atomic_t priority ;
   struct tty_buffer sentinel ;
   struct llist_head free ;
   atomic_t mem_used ;
   int mem_limit ;
   struct tty_buffer *tail ;
};
struct tty_port_operations {
   int (*carrier_raised)(struct tty_port * ) ;
   void (*dtr_rts)(struct tty_port * , int ) ;
   void (*shutdown)(struct tty_port * ) ;
   int (*activate)(struct tty_port * , struct tty_struct * ) ;
   void (*destruct)(struct tty_port * ) ;
};
struct tty_port {
   struct tty_bufhead buf ;
   struct tty_struct *tty ;
   struct tty_struct *itty ;
   struct tty_port_operations const *ops ;
   spinlock_t lock ;
   int blocked_open ;
   int count ;
   wait_queue_head_t open_wait ;
   wait_queue_head_t close_wait ;
   wait_queue_head_t delta_msr_wait ;
   unsigned long flags ;
   unsigned char console : 1 ;
   unsigned char low_latency : 1 ;
   struct mutex mutex ;
   struct mutex buf_mutex ;
   unsigned char *xmit_buf ;
   unsigned int close_delay ;
   unsigned int closing_wait ;
   int drain_delay ;
   struct kref kref ;
};
struct tty_struct {
   int magic ;
   struct kref kref ;
   struct device *dev ;
   struct tty_driver *driver ;
   struct tty_operations const *ops ;
   int index ;
   struct ld_semaphore ldisc_sem ;
   struct tty_ldisc *ldisc ;
   struct mutex atomic_write_lock ;
   struct mutex legacy_mutex ;
   struct mutex throttle_mutex ;
   struct rw_semaphore termios_rwsem ;
   struct mutex winsize_mutex ;
   spinlock_t ctrl_lock ;
   spinlock_t flow_lock ;
   struct ktermios termios ;
   struct ktermios termios_locked ;
   struct termiox *termiox ;
   char name[64U] ;
   struct pid *pgrp ;
   struct pid *session ;
   unsigned long flags ;
   int count ;
   struct winsize winsize ;
   unsigned char stopped : 1 ;
   unsigned char flow_stopped : 1 ;
   unsigned long unused : 62 ;
   int hw_stopped ;
   unsigned char ctrl_status ;
   unsigned char packet : 1 ;
   unsigned long unused_ctrl : 55 ;
   unsigned int receive_room ;
   int flow_change ;
   struct tty_struct *link ;
   struct fasync_struct *fasync ;
   int alt_speed ;
   wait_queue_head_t write_wait ;
   wait_queue_head_t read_wait ;
   struct work_struct hangup_work ;
   void *disc_data ;
   void *driver_data ;
   struct list_head tty_files ;
   int closing ;
   unsigned char *write_buf ;
   int write_cnt ;
   struct work_struct SAK_work ;
   struct tty_port *port ;
};
struct class;
struct iovec {
   void *iov_base ;
   __kernel_size_t iov_len ;
};
struct kvec {
   void *iov_base ;
   size_t iov_len ;
};
union __anonunion____missing_field_name_255 {
   struct iovec const *iov ;
   struct kvec const *kvec ;
   struct bio_vec const *bvec ;
};
struct iov_iter {
   int type ;
   size_t iov_offset ;
   size_t count ;
   union __anonunion____missing_field_name_255 __annonCompField77 ;
   unsigned long nr_segs ;
};
typedef unsigned short __kernel_sa_family_t;
typedef __kernel_sa_family_t sa_family_t;
struct sockaddr {
   sa_family_t sa_family ;
   char sa_data[14U] ;
};
struct msghdr {
   void *msg_name ;
   int msg_namelen ;
   struct iov_iter msg_iter ;
   void *msg_control ;
   __kernel_size_t msg_controllen ;
   unsigned int msg_flags ;
   struct kiocb *msg_iocb ;
};
enum ldv_24278 {
    SS_FREE = 0,
    SS_UNCONNECTED = 1,
    SS_CONNECTING = 2,
    SS_CONNECTED = 3,
    SS_DISCONNECTING = 4
} ;
typedef enum ldv_24278 socket_state;
struct socket_wq {
   wait_queue_head_t wait ;
   struct fasync_struct *fasync_list ;
   struct callback_head rcu ;
};
struct proto_ops;
struct socket {
   socket_state state ;
   short type ;
   unsigned long flags ;
   struct socket_wq *wq ;
   struct file *file ;
   struct sock *sk ;
   struct proto_ops const *ops ;
};
struct proto_ops {
   int family ;
   struct module *owner ;
   int (*release)(struct socket * ) ;
   int (*bind)(struct socket * , struct sockaddr * , int ) ;
   int (*connect)(struct socket * , struct sockaddr * , int , int ) ;
   int (*socketpair)(struct socket * , struct socket * ) ;
   int (*accept)(struct socket * , struct socket * , int ) ;
   int (*getname)(struct socket * , struct sockaddr * , int * , int ) ;
   unsigned int (*poll)(struct file * , struct socket * , struct poll_table_struct * ) ;
   int (*ioctl)(struct socket * , unsigned int , unsigned long ) ;
   int (*compat_ioctl)(struct socket * , unsigned int , unsigned long ) ;
   int (*listen)(struct socket * , int ) ;
   int (*shutdown)(struct socket * , int ) ;
   int (*setsockopt)(struct socket * , int , int , char * , unsigned int ) ;
   int (*getsockopt)(struct socket * , int , int , char * , int * ) ;
   int (*compat_setsockopt)(struct socket * , int , int , char * , unsigned int ) ;
   int (*compat_getsockopt)(struct socket * , int , int , char * , int * ) ;
   int (*sendmsg)(struct socket * , struct msghdr * , size_t ) ;
   int (*recvmsg)(struct socket * , struct msghdr * , size_t , int ) ;
   int (*mmap)(struct file * , struct socket * , struct vm_area_struct * ) ;
   ssize_t (*sendpage)(struct socket * , struct page * , int , size_t , int ) ;
   ssize_t (*splice_read)(struct socket * , loff_t * , struct pipe_inode_info * ,
                          size_t , unsigned int ) ;
   int (*set_peek_off)(struct sock * , int ) ;
};
struct in6_addr;
struct sk_buff;
struct klist_node;
struct klist_node {
   void *n_klist ;
   struct list_head n_node ;
   struct kref n_ref ;
};
struct seq_file {
   char *buf ;
   size_t size ;
   size_t from ;
   size_t count ;
   size_t pad_until ;
   loff_t index ;
   loff_t read_pos ;
   u64 version ;
   struct mutex lock ;
   struct seq_operations const *op ;
   int poll_event ;
   struct user_namespace *user_ns ;
   void *private ;
};
struct seq_operations {
   void *(*start)(struct seq_file * , loff_t * ) ;
   void (*stop)(struct seq_file * , void * ) ;
   void *(*next)(struct seq_file * , void * , loff_t * ) ;
   int (*show)(struct seq_file * , void * ) ;
};
struct pinctrl;
struct pinctrl_state;
struct dev_pin_info {
   struct pinctrl *p ;
   struct pinctrl_state *default_state ;
   struct pinctrl_state *sleep_state ;
   struct pinctrl_state *idle_state ;
};
struct dma_map_ops;
struct dev_archdata {
   struct dma_map_ops *dma_ops ;
   void *iommu ;
};
struct device_private;
struct device_driver;
struct driver_private;
struct subsys_private;
struct bus_type;
struct device_node;
struct fwnode_handle;
struct iommu_ops;
struct iommu_group;
struct device_attribute;
struct bus_type {
   char const *name ;
   char const *dev_name ;
   struct device *dev_root ;
   struct device_attribute *dev_attrs ;
   struct attribute_group const **bus_groups ;
   struct attribute_group const **dev_groups ;
   struct attribute_group const **drv_groups ;
   int (*match)(struct device * , struct device_driver * ) ;
   int (*uevent)(struct device * , struct kobj_uevent_env * ) ;
   int (*probe)(struct device * ) ;
   int (*remove)(struct device * ) ;
   void (*shutdown)(struct device * ) ;
   int (*online)(struct device * ) ;
   int (*offline)(struct device * ) ;
   int (*suspend)(struct device * , pm_message_t ) ;
   int (*resume)(struct device * ) ;
   struct dev_pm_ops const *pm ;
   struct iommu_ops const *iommu_ops ;
   struct subsys_private *p ;
   struct lock_class_key lock_key ;
};
struct device_type;
enum probe_type {
    PROBE_DEFAULT_STRATEGY = 0,
    PROBE_PREFER_ASYNCHRONOUS = 1,
    PROBE_FORCE_SYNCHRONOUS = 2
} ;
struct of_device_id;
struct acpi_device_id;
struct device_driver {
   char const *name ;
   struct bus_type *bus ;
   struct module *owner ;
   char const *mod_name ;
   bool suppress_bind_attrs ;
   enum probe_type probe_type ;
   struct of_device_id const *of_match_table ;
   struct acpi_device_id const *acpi_match_table ;
   int (*probe)(struct device * ) ;
   int (*remove)(struct device * ) ;
   void (*shutdown)(struct device * ) ;
   int (*suspend)(struct device * , pm_message_t ) ;
   int (*resume)(struct device * ) ;
   struct attribute_group const **groups ;
   struct dev_pm_ops const *pm ;
   struct driver_private *p ;
};
struct class_attribute;
struct class {
   char const *name ;
   struct module *owner ;
   struct class_attribute *class_attrs ;
   struct attribute_group const **dev_groups ;
   struct kobject *dev_kobj ;
   int (*dev_uevent)(struct device * , struct kobj_uevent_env * ) ;
   char *(*devnode)(struct device * , umode_t * ) ;
   void (*class_release)(struct class * ) ;
   void (*dev_release)(struct device * ) ;
   int (*suspend)(struct device * , pm_message_t ) ;
   int (*resume)(struct device * ) ;
   struct kobj_ns_type_operations const *ns_type ;
   void const *(*namespace)(struct device * ) ;
   struct dev_pm_ops const *pm ;
   struct subsys_private *p ;
};
struct class_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct class * , struct class_attribute * , char * ) ;
   ssize_t (*store)(struct class * , struct class_attribute * , char const * , size_t ) ;
};
struct device_type {
   char const *name ;
   struct attribute_group const **groups ;
   int (*uevent)(struct device * , struct kobj_uevent_env * ) ;
   char *(*devnode)(struct device * , umode_t * , kuid_t * , kgid_t * ) ;
   void (*release)(struct device * ) ;
   struct dev_pm_ops const *pm ;
};
struct device_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct device * , struct device_attribute * , char * ) ;
   ssize_t (*store)(struct device * , struct device_attribute * , char const * ,
                    size_t ) ;
};
struct device_dma_parameters {
   unsigned int max_segment_size ;
   unsigned long segment_boundary_mask ;
};
struct dma_coherent_mem;
struct cma;
struct device {
   struct device *parent ;
   struct device_private *p ;
   struct kobject kobj ;
   char const *init_name ;
   struct device_type const *type ;
   struct mutex mutex ;
   struct bus_type *bus ;
   struct device_driver *driver ;
   void *platform_data ;
   void *driver_data ;
   struct dev_pm_info power ;
   struct dev_pm_domain *pm_domain ;
   struct dev_pin_info *pins ;
   int numa_node ;
   u64 *dma_mask ;
   u64 coherent_dma_mask ;
   unsigned long dma_pfn_offset ;
   struct device_dma_parameters *dma_parms ;
   struct list_head dma_pools ;
   struct dma_coherent_mem *dma_mem ;
   struct cma *cma_area ;
   struct dev_archdata archdata ;
   struct device_node *of_node ;
   struct fwnode_handle *fwnode ;
   dev_t devt ;
   u32 id ;
   spinlock_t devres_lock ;
   struct list_head devres_head ;
   struct klist_node knode_class ;
   struct class *class ;
   struct attribute_group const **groups ;
   void (*release)(struct device * ) ;
   struct iommu_group *iommu_group ;
   bool offline_disabled ;
   bool offline ;
};
struct wakeup_source {
   char const *name ;
   struct list_head entry ;
   spinlock_t lock ;
   struct wake_irq *wakeirq ;
   struct timer_list timer ;
   unsigned long timer_expires ;
   ktime_t total_time ;
   ktime_t max_time ;
   ktime_t last_time ;
   ktime_t start_prevent_time ;
   ktime_t prevent_sleep_time ;
   unsigned long event_count ;
   unsigned long active_count ;
   unsigned long relax_count ;
   unsigned long expire_count ;
   unsigned long wakeup_count ;
   bool active ;
   bool autosleep_enabled ;
};
struct dma_attrs {
   unsigned long flags[1U] ;
};
enum dma_data_direction {
    DMA_BIDIRECTIONAL = 0,
    DMA_TO_DEVICE = 1,
    DMA_FROM_DEVICE = 2,
    DMA_NONE = 3
} ;
struct scatterlist {
   unsigned long sg_magic ;
   unsigned long page_link ;
   unsigned int offset ;
   unsigned int length ;
   dma_addr_t dma_address ;
   unsigned int dma_length ;
};
struct sg_table {
   struct scatterlist *sgl ;
   unsigned int nents ;
   unsigned int orig_nents ;
};
struct dma_map_ops {
   void *(*alloc)(struct device * , size_t , dma_addr_t * , gfp_t , struct dma_attrs * ) ;
   void (*free)(struct device * , size_t , void * , dma_addr_t , struct dma_attrs * ) ;
   int (*mmap)(struct device * , struct vm_area_struct * , void * , dma_addr_t ,
               size_t , struct dma_attrs * ) ;
   int (*get_sgtable)(struct device * , struct sg_table * , void * , dma_addr_t ,
                      size_t , struct dma_attrs * ) ;
   dma_addr_t (*map_page)(struct device * , struct page * , unsigned long , size_t ,
                          enum dma_data_direction , struct dma_attrs * ) ;
   void (*unmap_page)(struct device * , dma_addr_t , size_t , enum dma_data_direction ,
                      struct dma_attrs * ) ;
   int (*map_sg)(struct device * , struct scatterlist * , int , enum dma_data_direction ,
                 struct dma_attrs * ) ;
   void (*unmap_sg)(struct device * , struct scatterlist * , int , enum dma_data_direction ,
                    struct dma_attrs * ) ;
   void (*sync_single_for_cpu)(struct device * , dma_addr_t , size_t , enum dma_data_direction ) ;
   void (*sync_single_for_device)(struct device * , dma_addr_t , size_t , enum dma_data_direction ) ;
   void (*sync_sg_for_cpu)(struct device * , struct scatterlist * , int , enum dma_data_direction ) ;
   void (*sync_sg_for_device)(struct device * , struct scatterlist * , int , enum dma_data_direction ) ;
   int (*mapping_error)(struct device * , dma_addr_t ) ;
   int (*dma_supported)(struct device * , u64 ) ;
   int (*set_dma_mask)(struct device * , u64 ) ;
   int is_phys ;
};
typedef u64 netdev_features_t;
union __anonunion_in6_u_256 {
   __u8 u6_addr8[16U] ;
   __be16 u6_addr16[8U] ;
   __be32 u6_addr32[4U] ;
};
struct in6_addr {
   union __anonunion_in6_u_256 in6_u ;
};
struct ethhdr {
   unsigned char h_dest[6U] ;
   unsigned char h_source[6U] ;
   __be16 h_proto ;
};
struct pipe_buf_operations;
struct pipe_buffer {
   struct page *page ;
   unsigned int offset ;
   unsigned int len ;
   struct pipe_buf_operations const *ops ;
   unsigned int flags ;
   unsigned long private ;
};
struct pipe_inode_info {
   struct mutex mutex ;
   wait_queue_head_t wait ;
   unsigned int nrbufs ;
   unsigned int curbuf ;
   unsigned int buffers ;
   unsigned int readers ;
   unsigned int writers ;
   unsigned int files ;
   unsigned int waiting_writers ;
   unsigned int r_counter ;
   unsigned int w_counter ;
   struct page *tmp_page ;
   struct fasync_struct *fasync_readers ;
   struct fasync_struct *fasync_writers ;
   struct pipe_buffer *bufs ;
};
struct pipe_buf_operations {
   int can_merge ;
   int (*confirm)(struct pipe_inode_info * , struct pipe_buffer * ) ;
   void (*release)(struct pipe_inode_info * , struct pipe_buffer * ) ;
   int (*steal)(struct pipe_inode_info * , struct pipe_buffer * ) ;
   void (*get)(struct pipe_inode_info * , struct pipe_buffer * ) ;
};
struct napi_struct;
struct nf_conntrack {
   atomic_t use ;
};
union __anonunion____missing_field_name_261 {
   struct net_device *physoutdev ;
   char neigh_header[8U] ;
};
union __anonunion____missing_field_name_262 {
   __be32 ipv4_daddr ;
   struct in6_addr ipv6_daddr ;
};
struct nf_bridge_info {
   atomic_t use ;
   unsigned char orig_proto ;
   bool pkt_otherhost ;
   __u16 frag_max_size ;
   unsigned int mask ;
   struct net_device *physindev ;
   union __anonunion____missing_field_name_261 __annonCompField81 ;
   union __anonunion____missing_field_name_262 __annonCompField82 ;
};
struct sk_buff_head {
   struct sk_buff *next ;
   struct sk_buff *prev ;
   __u32 qlen ;
   spinlock_t lock ;
};
typedef unsigned int sk_buff_data_t;
struct __anonstruct____missing_field_name_265 {
   u32 stamp_us ;
   u32 stamp_jiffies ;
};
union __anonunion____missing_field_name_264 {
   u64 v64 ;
   struct __anonstruct____missing_field_name_265 __annonCompField83 ;
};
struct skb_mstamp {
   union __anonunion____missing_field_name_264 __annonCompField84 ;
};
union __anonunion____missing_field_name_268 {
   ktime_t tstamp ;
   struct skb_mstamp skb_mstamp ;
};
struct __anonstruct____missing_field_name_267 {
   struct sk_buff *next ;
   struct sk_buff *prev ;
   union __anonunion____missing_field_name_268 __annonCompField85 ;
};
union __anonunion____missing_field_name_266 {
   struct __anonstruct____missing_field_name_267 __annonCompField86 ;
   struct rb_node rbnode ;
};
struct sec_path;
struct __anonstruct____missing_field_name_270 {
   __u16 csum_start ;
   __u16 csum_offset ;
};
union __anonunion____missing_field_name_269 {
   __wsum csum ;
   struct __anonstruct____missing_field_name_270 __annonCompField88 ;
};
union __anonunion____missing_field_name_271 {
   unsigned int napi_id ;
   unsigned int sender_cpu ;
};
union __anonunion____missing_field_name_272 {
   __u32 mark ;
   __u32 reserved_tailroom ;
};
union __anonunion____missing_field_name_273 {
   __be16 inner_protocol ;
   __u8 inner_ipproto ;
};
struct sk_buff {
   union __anonunion____missing_field_name_266 __annonCompField87 ;
   struct sock *sk ;
   struct net_device *dev ;
   char cb[48U] ;
   unsigned long _skb_refdst ;
   void (*destructor)(struct sk_buff * ) ;
   struct sec_path *sp ;
   struct nf_conntrack *nfct ;
   struct nf_bridge_info *nf_bridge ;
   unsigned int len ;
   unsigned int data_len ;
   __u16 mac_len ;
   __u16 hdr_len ;
   __u16 queue_mapping ;
   unsigned char cloned : 1 ;
   unsigned char nohdr : 1 ;
   unsigned char fclone : 2 ;
   unsigned char peeked : 1 ;
   unsigned char head_frag : 1 ;
   unsigned char xmit_more : 1 ;
   __u32 headers_start[0U] ;
   __u8 __pkt_type_offset[0U] ;
   unsigned char pkt_type : 3 ;
   unsigned char pfmemalloc : 1 ;
   unsigned char ignore_df : 1 ;
   unsigned char nfctinfo : 3 ;
   unsigned char nf_trace : 1 ;
   unsigned char ip_summed : 2 ;
   unsigned char ooo_okay : 1 ;
   unsigned char l4_hash : 1 ;
   unsigned char sw_hash : 1 ;
   unsigned char wifi_acked_valid : 1 ;
   unsigned char wifi_acked : 1 ;
   unsigned char no_fcs : 1 ;
   unsigned char encapsulation : 1 ;
   unsigned char encap_hdr_csum : 1 ;
   unsigned char csum_valid : 1 ;
   unsigned char csum_complete_sw : 1 ;
   unsigned char csum_level : 2 ;
   unsigned char csum_bad : 1 ;
   unsigned char ndisc_nodetype : 2 ;
   unsigned char ipvs_property : 1 ;
   unsigned char inner_protocol_type : 1 ;
   unsigned char remcsum_offload : 1 ;
   __u16 tc_index ;
   __u16 tc_verd ;
   union __anonunion____missing_field_name_269 __annonCompField89 ;
   __u32 priority ;
   int skb_iif ;
   __u32 hash ;
   __be16 vlan_proto ;
   __u16 vlan_tci ;
   union __anonunion____missing_field_name_271 __annonCompField90 ;
   __u32 secmark ;
   union __anonunion____missing_field_name_272 __annonCompField91 ;
   union __anonunion____missing_field_name_273 __annonCompField92 ;
   __u16 inner_transport_header ;
   __u16 inner_network_header ;
   __u16 inner_mac_header ;
   __be16 protocol ;
   __u16 transport_header ;
   __u16 network_header ;
   __u16 mac_header ;
   __u32 headers_end[0U] ;
   sk_buff_data_t tail ;
   sk_buff_data_t end ;
   unsigned char *head ;
   unsigned char *data ;
   unsigned int truesize ;
   atomic_t users ;
};
struct dst_entry;
struct rtable;
struct hlist_nulls_node;
struct hlist_nulls_head {
   struct hlist_nulls_node *first ;
};
struct hlist_nulls_node {
   struct hlist_nulls_node *next ;
   struct hlist_nulls_node **pprev ;
};
struct dql {
   unsigned int num_queued ;
   unsigned int adj_limit ;
   unsigned int last_obj_cnt ;
   unsigned int limit ;
   unsigned int num_completed ;
   unsigned int prev_ovlimit ;
   unsigned int prev_num_queued ;
   unsigned int prev_last_obj_cnt ;
   unsigned int lowest_slack ;
   unsigned long slack_start_time ;
   unsigned int max_limit ;
   unsigned int min_limit ;
   unsigned int slack_hold_time ;
};
struct __anonstruct_sync_serial_settings_275 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
};
typedef struct __anonstruct_sync_serial_settings_275 sync_serial_settings;
struct __anonstruct_te1_settings_276 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
   unsigned int slot_map ;
};
typedef struct __anonstruct_te1_settings_276 te1_settings;
struct __anonstruct_raw_hdlc_proto_277 {
   unsigned short encoding ;
   unsigned short parity ;
};
typedef struct __anonstruct_raw_hdlc_proto_277 raw_hdlc_proto;
struct __anonstruct_fr_proto_278 {
   unsigned int t391 ;
   unsigned int t392 ;
   unsigned int n391 ;
   unsigned int n392 ;
   unsigned int n393 ;
   unsigned short lmi ;
   unsigned short dce ;
};
typedef struct __anonstruct_fr_proto_278 fr_proto;
struct __anonstruct_fr_proto_pvc_279 {
   unsigned int dlci ;
};
typedef struct __anonstruct_fr_proto_pvc_279 fr_proto_pvc;
struct __anonstruct_fr_proto_pvc_info_280 {
   unsigned int dlci ;
   char master[16U] ;
};
typedef struct __anonstruct_fr_proto_pvc_info_280 fr_proto_pvc_info;
struct __anonstruct_cisco_proto_281 {
   unsigned int interval ;
   unsigned int timeout ;
};
typedef struct __anonstruct_cisco_proto_281 cisco_proto;
struct ifmap {
   unsigned long mem_start ;
   unsigned long mem_end ;
   unsigned short base_addr ;
   unsigned char irq ;
   unsigned char dma ;
   unsigned char port ;
};
union __anonunion_ifs_ifsu_282 {
   raw_hdlc_proto *raw_hdlc ;
   cisco_proto *cisco ;
   fr_proto *fr ;
   fr_proto_pvc *fr_pvc ;
   fr_proto_pvc_info *fr_pvc_info ;
   sync_serial_settings *sync ;
   te1_settings *te1 ;
};
struct if_settings {
   unsigned int type ;
   unsigned int size ;
   union __anonunion_ifs_ifsu_282 ifs_ifsu ;
};
union __anonunion_ifr_ifrn_283 {
   char ifrn_name[16U] ;
};
union __anonunion_ifr_ifru_284 {
   struct sockaddr ifru_addr ;
   struct sockaddr ifru_dstaddr ;
   struct sockaddr ifru_broadaddr ;
   struct sockaddr ifru_netmask ;
   struct sockaddr ifru_hwaddr ;
   short ifru_flags ;
   int ifru_ivalue ;
   int ifru_mtu ;
   struct ifmap ifru_map ;
   char ifru_slave[16U] ;
   char ifru_newname[16U] ;
   void *ifru_data ;
   struct if_settings ifru_settings ;
};
struct ifreq {
   union __anonunion_ifr_ifrn_283 ifr_ifrn ;
   union __anonunion_ifr_ifru_284 ifr_ifru ;
};
typedef s32 compat_time_t;
typedef s32 compat_long_t;
typedef u32 compat_uptr_t;
struct compat_timespec {
   compat_time_t tv_sec ;
   s32 tv_nsec ;
};
struct compat_robust_list {
   compat_uptr_t next ;
};
struct compat_robust_list_head {
   struct compat_robust_list list ;
   compat_long_t futex_offset ;
   compat_uptr_t list_op_pending ;
};
struct ethtool_cmd {
   __u32 cmd ;
   __u32 supported ;
   __u32 advertising ;
   __u16 speed ;
   __u8 duplex ;
   __u8 port ;
   __u8 phy_address ;
   __u8 transceiver ;
   __u8 autoneg ;
   __u8 mdio_support ;
   __u32 maxtxpkt ;
   __u32 maxrxpkt ;
   __u16 speed_hi ;
   __u8 eth_tp_mdix ;
   __u8 eth_tp_mdix_ctrl ;
   __u32 lp_advertising ;
   __u32 reserved[2U] ;
};
struct ethtool_drvinfo {
   __u32 cmd ;
   char driver[32U] ;
   char version[32U] ;
   char fw_version[32U] ;
   char bus_info[32U] ;
   char erom_version[32U] ;
   char reserved2[12U] ;
   __u32 n_priv_flags ;
   __u32 n_stats ;
   __u32 testinfo_len ;
   __u32 eedump_len ;
   __u32 regdump_len ;
};
struct ethtool_wolinfo {
   __u32 cmd ;
   __u32 supported ;
   __u32 wolopts ;
   __u8 sopass[6U] ;
};
struct ethtool_tunable {
   __u32 cmd ;
   __u32 id ;
   __u32 type_id ;
   __u32 len ;
   void *data[0U] ;
};
struct ethtool_regs {
   __u32 cmd ;
   __u32 version ;
   __u32 len ;
   __u8 data[0U] ;
};
struct ethtool_eeprom {
   __u32 cmd ;
   __u32 magic ;
   __u32 offset ;
   __u32 len ;
   __u8 data[0U] ;
};
struct ethtool_eee {
   __u32 cmd ;
   __u32 supported ;
   __u32 advertised ;
   __u32 lp_advertised ;
   __u32 eee_active ;
   __u32 eee_enabled ;
   __u32 tx_lpi_enabled ;
   __u32 tx_lpi_timer ;
   __u32 reserved[2U] ;
};
struct ethtool_modinfo {
   __u32 cmd ;
   __u32 type ;
   __u32 eeprom_len ;
   __u32 reserved[8U] ;
};
struct ethtool_coalesce {
   __u32 cmd ;
   __u32 rx_coalesce_usecs ;
   __u32 rx_max_coalesced_frames ;
   __u32 rx_coalesce_usecs_irq ;
   __u32 rx_max_coalesced_frames_irq ;
   __u32 tx_coalesce_usecs ;
   __u32 tx_max_coalesced_frames ;
   __u32 tx_coalesce_usecs_irq ;
   __u32 tx_max_coalesced_frames_irq ;
   __u32 stats_block_coalesce_usecs ;
   __u32 use_adaptive_rx_coalesce ;
   __u32 use_adaptive_tx_coalesce ;
   __u32 pkt_rate_low ;
   __u32 rx_coalesce_usecs_low ;
   __u32 rx_max_coalesced_frames_low ;
   __u32 tx_coalesce_usecs_low ;
   __u32 tx_max_coalesced_frames_low ;
   __u32 pkt_rate_high ;
   __u32 rx_coalesce_usecs_high ;
   __u32 rx_max_coalesced_frames_high ;
   __u32 tx_coalesce_usecs_high ;
   __u32 tx_max_coalesced_frames_high ;
   __u32 rate_sample_interval ;
};
struct ethtool_ringparam {
   __u32 cmd ;
   __u32 rx_max_pending ;
   __u32 rx_mini_max_pending ;
   __u32 rx_jumbo_max_pending ;
   __u32 tx_max_pending ;
   __u32 rx_pending ;
   __u32 rx_mini_pending ;
   __u32 rx_jumbo_pending ;
   __u32 tx_pending ;
};
struct ethtool_channels {
   __u32 cmd ;
   __u32 max_rx ;
   __u32 max_tx ;
   __u32 max_other ;
   __u32 max_combined ;
   __u32 rx_count ;
   __u32 tx_count ;
   __u32 other_count ;
   __u32 combined_count ;
};
struct ethtool_pauseparam {
   __u32 cmd ;
   __u32 autoneg ;
   __u32 rx_pause ;
   __u32 tx_pause ;
};
struct ethtool_test {
   __u32 cmd ;
   __u32 flags ;
   __u32 reserved ;
   __u32 len ;
   __u64 data[0U] ;
};
struct ethtool_stats {
   __u32 cmd ;
   __u32 n_stats ;
   __u64 data[0U] ;
};
struct ethtool_tcpip4_spec {
   __be32 ip4src ;
   __be32 ip4dst ;
   __be16 psrc ;
   __be16 pdst ;
   __u8 tos ;
};
struct ethtool_ah_espip4_spec {
   __be32 ip4src ;
   __be32 ip4dst ;
   __be32 spi ;
   __u8 tos ;
};
struct ethtool_usrip4_spec {
   __be32 ip4src ;
   __be32 ip4dst ;
   __be32 l4_4_bytes ;
   __u8 tos ;
   __u8 ip_ver ;
   __u8 proto ;
};
union ethtool_flow_union {
   struct ethtool_tcpip4_spec tcp_ip4_spec ;
   struct ethtool_tcpip4_spec udp_ip4_spec ;
   struct ethtool_tcpip4_spec sctp_ip4_spec ;
   struct ethtool_ah_espip4_spec ah_ip4_spec ;
   struct ethtool_ah_espip4_spec esp_ip4_spec ;
   struct ethtool_usrip4_spec usr_ip4_spec ;
   struct ethhdr ether_spec ;
   __u8 hdata[52U] ;
};
struct ethtool_flow_ext {
   __u8 padding[2U] ;
   unsigned char h_dest[6U] ;
   __be16 vlan_etype ;
   __be16 vlan_tci ;
   __be32 data[2U] ;
};
struct ethtool_rx_flow_spec {
   __u32 flow_type ;
   union ethtool_flow_union h_u ;
   struct ethtool_flow_ext h_ext ;
   union ethtool_flow_union m_u ;
   struct ethtool_flow_ext m_ext ;
   __u64 ring_cookie ;
   __u32 location ;
};
struct ethtool_rxnfc {
   __u32 cmd ;
   __u32 flow_type ;
   __u64 data ;
   struct ethtool_rx_flow_spec fs ;
   __u32 rule_cnt ;
   __u32 rule_locs[0U] ;
};
struct ethtool_flash {
   __u32 cmd ;
   __u32 region ;
   char data[128U] ;
};
struct ethtool_dump {
   __u32 cmd ;
   __u32 version ;
   __u32 flag ;
   __u32 len ;
   __u8 data[0U] ;
};
struct ethtool_ts_info {
   __u32 cmd ;
   __u32 so_timestamping ;
   __s32 phc_index ;
   __u32 tx_types ;
   __u32 tx_reserved[3U] ;
   __u32 rx_filters ;
   __u32 rx_reserved[3U] ;
};
enum ethtool_phys_id_state {
    ETHTOOL_ID_INACTIVE = 0,
    ETHTOOL_ID_ACTIVE = 1,
    ETHTOOL_ID_ON = 2,
    ETHTOOL_ID_OFF = 3
} ;
struct ethtool_ops {
   int (*get_settings)(struct net_device * , struct ethtool_cmd * ) ;
   int (*set_settings)(struct net_device * , struct ethtool_cmd * ) ;
   void (*get_drvinfo)(struct net_device * , struct ethtool_drvinfo * ) ;
   int (*get_regs_len)(struct net_device * ) ;
   void (*get_regs)(struct net_device * , struct ethtool_regs * , void * ) ;
   void (*get_wol)(struct net_device * , struct ethtool_wolinfo * ) ;
   int (*set_wol)(struct net_device * , struct ethtool_wolinfo * ) ;
   u32 (*get_msglevel)(struct net_device * ) ;
   void (*set_msglevel)(struct net_device * , u32 ) ;
   int (*nway_reset)(struct net_device * ) ;
   u32 (*get_link)(struct net_device * ) ;
   int (*get_eeprom_len)(struct net_device * ) ;
   int (*get_eeprom)(struct net_device * , struct ethtool_eeprom * , u8 * ) ;
   int (*set_eeprom)(struct net_device * , struct ethtool_eeprom * , u8 * ) ;
   int (*get_coalesce)(struct net_device * , struct ethtool_coalesce * ) ;
   int (*set_coalesce)(struct net_device * , struct ethtool_coalesce * ) ;
   void (*get_ringparam)(struct net_device * , struct ethtool_ringparam * ) ;
   int (*set_ringparam)(struct net_device * , struct ethtool_ringparam * ) ;
   void (*get_pauseparam)(struct net_device * , struct ethtool_pauseparam * ) ;
   int (*set_pauseparam)(struct net_device * , struct ethtool_pauseparam * ) ;
   void (*self_test)(struct net_device * , struct ethtool_test * , u64 * ) ;
   void (*get_strings)(struct net_device * , u32 , u8 * ) ;
   int (*set_phys_id)(struct net_device * , enum ethtool_phys_id_state ) ;
   void (*get_ethtool_stats)(struct net_device * , struct ethtool_stats * , u64 * ) ;
   int (*begin)(struct net_device * ) ;
   void (*complete)(struct net_device * ) ;
   u32 (*get_priv_flags)(struct net_device * ) ;
   int (*set_priv_flags)(struct net_device * , u32 ) ;
   int (*get_sset_count)(struct net_device * , int ) ;
   int (*get_rxnfc)(struct net_device * , struct ethtool_rxnfc * , u32 * ) ;
   int (*set_rxnfc)(struct net_device * , struct ethtool_rxnfc * ) ;
   int (*flash_device)(struct net_device * , struct ethtool_flash * ) ;
   int (*reset)(struct net_device * , u32 * ) ;
   u32 (*get_rxfh_key_size)(struct net_device * ) ;
   u32 (*get_rxfh_indir_size)(struct net_device * ) ;
   int (*get_rxfh)(struct net_device * , u32 * , u8 * , u8 * ) ;
   int (*set_rxfh)(struct net_device * , u32 const * , u8 const * , u8 const ) ;
   void (*get_channels)(struct net_device * , struct ethtool_channels * ) ;
   int (*set_channels)(struct net_device * , struct ethtool_channels * ) ;
   int (*get_dump_flag)(struct net_device * , struct ethtool_dump * ) ;
   int (*get_dump_data)(struct net_device * , struct ethtool_dump * , void * ) ;
   int (*set_dump)(struct net_device * , struct ethtool_dump * ) ;
   int (*get_ts_info)(struct net_device * , struct ethtool_ts_info * ) ;
   int (*get_module_info)(struct net_device * , struct ethtool_modinfo * ) ;
   int (*get_module_eeprom)(struct net_device * , struct ethtool_eeprom * , u8 * ) ;
   int (*get_eee)(struct net_device * , struct ethtool_eee * ) ;
   int (*set_eee)(struct net_device * , struct ethtool_eee * ) ;
   int (*get_tunable)(struct net_device * , struct ethtool_tunable const * , void * ) ;
   int (*set_tunable)(struct net_device * , struct ethtool_tunable const * , void const * ) ;
};
struct prot_inuse;
struct netns_core {
   struct ctl_table_header *sysctl_hdr ;
   int sysctl_somaxconn ;
   struct prot_inuse *inuse ;
};
struct u64_stats_sync {
};
struct ipstats_mib {
   u64 mibs[36U] ;
   struct u64_stats_sync syncp ;
};
struct icmp_mib {
   unsigned long mibs[28U] ;
};
struct icmpmsg_mib {
   atomic_long_t mibs[512U] ;
};
struct icmpv6_mib {
   unsigned long mibs[6U] ;
};
struct icmpv6msg_mib {
   atomic_long_t mibs[512U] ;
};
struct tcp_mib {
   unsigned long mibs[16U] ;
};
struct udp_mib {
   unsigned long mibs[9U] ;
};
struct linux_mib {
   unsigned long mibs[115U] ;
};
struct linux_xfrm_mib {
   unsigned long mibs[29U] ;
};
struct netns_mib {
   struct tcp_mib *tcp_statistics ;
   struct ipstats_mib *ip_statistics ;
   struct linux_mib *net_statistics ;
   struct udp_mib *udp_statistics ;
   struct udp_mib *udplite_statistics ;
   struct icmp_mib *icmp_statistics ;
   struct icmpmsg_mib *icmpmsg_statistics ;
   struct proc_dir_entry *proc_net_devsnmp6 ;
   struct udp_mib *udp_stats_in6 ;
   struct udp_mib *udplite_stats_in6 ;
   struct ipstats_mib *ipv6_statistics ;
   struct icmpv6_mib *icmpv6_statistics ;
   struct icmpv6msg_mib *icmpv6msg_statistics ;
   struct linux_xfrm_mib *xfrm_statistics ;
};
struct netns_unix {
   int sysctl_max_dgram_qlen ;
   struct ctl_table_header *ctl ;
};
struct netns_packet {
   struct mutex sklist_lock ;
   struct hlist_head sklist ;
};
struct netns_frags {
   struct percpu_counter mem ;
   int timeout ;
   int high_thresh ;
   int low_thresh ;
};
struct ipv4_devconf;
struct fib_rules_ops;
struct fib_table;
struct local_ports {
   seqlock_t lock ;
   int range[2U] ;
   bool warned ;
};
struct ping_group_range {
   seqlock_t lock ;
   kgid_t range[2U] ;
};
struct inet_peer_base;
struct xt_table;
struct netns_ipv4 {
   struct ctl_table_header *forw_hdr ;
   struct ctl_table_header *frags_hdr ;
   struct ctl_table_header *ipv4_hdr ;
   struct ctl_table_header *route_hdr ;
   struct ctl_table_header *xfrm4_hdr ;
   struct ipv4_devconf *devconf_all ;
   struct ipv4_devconf *devconf_dflt ;
   struct fib_rules_ops *rules_ops ;
   bool fib_has_custom_rules ;
   struct fib_table *fib_local ;
   struct fib_table *fib_main ;
   struct fib_table *fib_default ;
   int fib_num_tclassid_users ;
   struct hlist_head *fib_table_hash ;
   bool fib_offload_disabled ;
   struct sock *fibnl ;
   struct sock **icmp_sk ;
   struct sock *mc_autojoin_sk ;
   struct inet_peer_base *peers ;
   struct sock **tcp_sk ;
   struct netns_frags frags ;
   struct xt_table *iptable_filter ;
   struct xt_table *iptable_mangle ;
   struct xt_table *iptable_raw ;
   struct xt_table *arptable_filter ;
   struct xt_table *iptable_security ;
   struct xt_table *nat_table ;
   int sysctl_icmp_echo_ignore_all ;
   int sysctl_icmp_echo_ignore_broadcasts ;
   int sysctl_icmp_ignore_bogus_error_responses ;
   int sysctl_icmp_ratelimit ;
   int sysctl_icmp_ratemask ;
   int sysctl_icmp_errors_use_inbound_ifaddr ;
   struct local_ports ip_local_ports ;
   int sysctl_tcp_ecn ;
   int sysctl_tcp_ecn_fallback ;
   int sysctl_ip_no_pmtu_disc ;
   int sysctl_ip_fwd_use_pmtu ;
   int sysctl_ip_nonlocal_bind ;
   int sysctl_fwmark_reflect ;
   int sysctl_tcp_fwmark_accept ;
   int sysctl_tcp_mtu_probing ;
   int sysctl_tcp_base_mss ;
   int sysctl_tcp_probe_threshold ;
   u32 sysctl_tcp_probe_interval ;
   struct ping_group_range ping_group_range ;
   atomic_t dev_addr_genid ;
   unsigned long *sysctl_local_reserved_ports ;
   struct list_head mr_tables ;
   struct fib_rules_ops *mr_rules_ops ;
   atomic_t rt_genid ;
};
struct neighbour;
struct dst_ops {
   unsigned short family ;
   unsigned int gc_thresh ;
   int (*gc)(struct dst_ops * ) ;
   struct dst_entry *(*check)(struct dst_entry * , __u32 ) ;
   unsigned int (*default_advmss)(struct dst_entry const * ) ;
   unsigned int (*mtu)(struct dst_entry const * ) ;
   u32 *(*cow_metrics)(struct dst_entry * , unsigned long ) ;
   void (*destroy)(struct dst_entry * ) ;
   void (*ifdown)(struct dst_entry * , struct net_device * , int ) ;
   struct dst_entry *(*negative_advice)(struct dst_entry * ) ;
   void (*link_failure)(struct sk_buff * ) ;
   void (*update_pmtu)(struct dst_entry * , struct sock * , struct sk_buff * , u32 ) ;
   void (*redirect)(struct dst_entry * , struct sock * , struct sk_buff * ) ;
   int (*local_out)(struct sk_buff * ) ;
   struct neighbour *(*neigh_lookup)(struct dst_entry const * , struct sk_buff * ,
                                     void const * ) ;
   struct kmem_cache *kmem_cachep ;
   struct percpu_counter pcpuc_entries ;
};
struct netns_sysctl_ipv6 {
   struct ctl_table_header *hdr ;
   struct ctl_table_header *route_hdr ;
   struct ctl_table_header *icmp_hdr ;
   struct ctl_table_header *frags_hdr ;
   struct ctl_table_header *xfrm6_hdr ;
   int bindv6only ;
   int flush_delay ;
   int ip6_rt_max_size ;
   int ip6_rt_gc_min_interval ;
   int ip6_rt_gc_timeout ;
   int ip6_rt_gc_interval ;
   int ip6_rt_gc_elasticity ;
   int ip6_rt_mtu_expires ;
   int ip6_rt_min_advmss ;
   int flowlabel_consistency ;
   int auto_flowlabels ;
   int icmpv6_time ;
   int anycast_src_echo_reply ;
   int fwmark_reflect ;
   int idgen_retries ;
   int idgen_delay ;
   int flowlabel_state_ranges ;
};
struct ipv6_devconf;
struct rt6_info;
struct rt6_statistics;
struct fib6_table;
struct netns_ipv6 {
   struct netns_sysctl_ipv6 sysctl ;
   struct ipv6_devconf *devconf_all ;
   struct ipv6_devconf *devconf_dflt ;
   struct inet_peer_base *peers ;
   struct netns_frags frags ;
   struct xt_table *ip6table_filter ;
   struct xt_table *ip6table_mangle ;
   struct xt_table *ip6table_raw ;
   struct xt_table *ip6table_security ;
   struct xt_table *ip6table_nat ;
   struct rt6_info *ip6_null_entry ;
   struct rt6_statistics *rt6_stats ;
   struct timer_list ip6_fib_timer ;
   struct hlist_head *fib_table_hash ;
   struct fib6_table *fib6_main_tbl ;
   struct dst_ops ip6_dst_ops ;
   unsigned int ip6_rt_gc_expire ;
   unsigned long ip6_rt_last_gc ;
   struct rt6_info *ip6_prohibit_entry ;
   struct rt6_info *ip6_blk_hole_entry ;
   struct fib6_table *fib6_local_tbl ;
   struct fib_rules_ops *fib6_rules_ops ;
   struct sock **icmp_sk ;
   struct sock *ndisc_sk ;
   struct sock *tcp_sk ;
   struct sock *igmp_sk ;
   struct sock *mc_autojoin_sk ;
   struct list_head mr6_tables ;
   struct fib_rules_ops *mr6_rules_ops ;
   atomic_t dev_addr_genid ;
   atomic_t fib6_sernum ;
};
struct netns_nf_frag {
   struct netns_sysctl_ipv6 sysctl ;
   struct netns_frags frags ;
};
struct netns_sysctl_lowpan {
   struct ctl_table_header *frags_hdr ;
};
struct netns_ieee802154_lowpan {
   struct netns_sysctl_lowpan sysctl ;
   struct netns_frags frags ;
};
struct sctp_mib;
struct netns_sctp {
   struct sctp_mib *sctp_statistics ;
   struct proc_dir_entry *proc_net_sctp ;
   struct ctl_table_header *sysctl_header ;
   struct sock *ctl_sock ;
   struct list_head local_addr_list ;
   struct list_head addr_waitq ;
   struct timer_list addr_wq_timer ;
   struct list_head auto_asconf_splist ;
   spinlock_t addr_wq_lock ;
   spinlock_t local_addr_lock ;
   unsigned int rto_initial ;
   unsigned int rto_min ;
   unsigned int rto_max ;
   int rto_alpha ;
   int rto_beta ;
   int max_burst ;
   int cookie_preserve_enable ;
   char *sctp_hmac_alg ;
   unsigned int valid_cookie_life ;
   unsigned int sack_timeout ;
   unsigned int hb_interval ;
   int max_retrans_association ;
   int max_retrans_path ;
   int max_retrans_init ;
   int pf_retrans ;
   int sndbuf_policy ;
   int rcvbuf_policy ;
   int default_auto_asconf ;
   int addip_enable ;
   int addip_noauth ;
   int prsctp_enable ;
   int auth_enable ;
   int scope_policy ;
   int rwnd_upd_shift ;
   unsigned long max_autoclose ;
};
struct netns_dccp {
   struct sock *v4_ctl_sk ;
   struct sock *v6_ctl_sk ;
};
struct nf_logger;
struct netns_nf {
   struct proc_dir_entry *proc_netfilter ;
   struct nf_logger const *nf_loggers[13U] ;
   struct ctl_table_header *nf_log_dir_header ;
};
struct ebt_table;
struct netns_xt {
   struct list_head tables[13U] ;
   bool notrack_deprecated_warning ;
   bool clusterip_deprecated_warning ;
   struct ebt_table *broute_table ;
   struct ebt_table *frame_filter ;
   struct ebt_table *frame_nat ;
};
struct nf_proto_net {
   struct ctl_table_header *ctl_table_header ;
   struct ctl_table *ctl_table ;
   struct ctl_table_header *ctl_compat_header ;
   struct ctl_table *ctl_compat_table ;
   unsigned int users ;
};
struct nf_generic_net {
   struct nf_proto_net pn ;
   unsigned int timeout ;
};
struct nf_tcp_net {
   struct nf_proto_net pn ;
   unsigned int timeouts[14U] ;
   unsigned int tcp_loose ;
   unsigned int tcp_be_liberal ;
   unsigned int tcp_max_retrans ;
};
struct nf_udp_net {
   struct nf_proto_net pn ;
   unsigned int timeouts[2U] ;
};
struct nf_icmp_net {
   struct nf_proto_net pn ;
   unsigned int timeout ;
};
struct nf_ip_net {
   struct nf_generic_net generic ;
   struct nf_tcp_net tcp ;
   struct nf_udp_net udp ;
   struct nf_icmp_net icmp ;
   struct nf_icmp_net icmpv6 ;
   struct ctl_table_header *ctl_table_header ;
   struct ctl_table *ctl_table ;
};
struct ct_pcpu {
   spinlock_t lock ;
   struct hlist_nulls_head unconfirmed ;
   struct hlist_nulls_head dying ;
   struct hlist_nulls_head tmpl ;
};
struct ip_conntrack_stat;
struct nf_ct_event_notifier;
struct nf_exp_event_notifier;
struct netns_ct {
   atomic_t count ;
   unsigned int expect_count ;
   struct delayed_work ecache_dwork ;
   bool ecache_dwork_pending ;
   struct ctl_table_header *sysctl_header ;
   struct ctl_table_header *acct_sysctl_header ;
   struct ctl_table_header *tstamp_sysctl_header ;
   struct ctl_table_header *event_sysctl_header ;
   struct ctl_table_header *helper_sysctl_header ;
   char *slabname ;
   unsigned int sysctl_log_invalid ;
   int sysctl_events ;
   int sysctl_acct ;
   int sysctl_auto_assign_helper ;
   bool auto_assign_helper_warned ;
   int sysctl_tstamp ;
   int sysctl_checksum ;
   unsigned int htable_size ;
   seqcount_t generation ;
   struct kmem_cache *nf_conntrack_cachep ;
   struct hlist_nulls_head *hash ;
   struct hlist_head *expect_hash ;
   struct ct_pcpu *pcpu_lists ;
   struct ip_conntrack_stat *stat ;
   struct nf_ct_event_notifier *nf_conntrack_event_cb ;
   struct nf_exp_event_notifier *nf_expect_event_cb ;
   struct nf_ip_net nf_ct_proto ;
   unsigned int labels_used ;
   u8 label_words ;
   struct hlist_head *nat_bysource ;
   unsigned int nat_htable_size ;
};
struct nft_af_info;
struct netns_nftables {
   struct list_head af_info ;
   struct list_head commit_list ;
   struct nft_af_info *ipv4 ;
   struct nft_af_info *ipv6 ;
   struct nft_af_info *inet ;
   struct nft_af_info *arp ;
   struct nft_af_info *bridge ;
   struct nft_af_info *netdev ;
   unsigned int base_seq ;
   u8 gencursor ;
};
struct flow_cache_percpu {
   struct hlist_head *hash_table ;
   int hash_count ;
   u32 hash_rnd ;
   int hash_rnd_recalc ;
   struct tasklet_struct flush_tasklet ;
};
struct flow_cache {
   u32 hash_shift ;
   struct flow_cache_percpu *percpu ;
   struct notifier_block hotcpu_notifier ;
   int low_watermark ;
   int high_watermark ;
   struct timer_list rnd_timer ;
};
struct xfrm_policy_hash {
   struct hlist_head *table ;
   unsigned int hmask ;
   u8 dbits4 ;
   u8 sbits4 ;
   u8 dbits6 ;
   u8 sbits6 ;
};
struct xfrm_policy_hthresh {
   struct work_struct work ;
   seqlock_t lock ;
   u8 lbits4 ;
   u8 rbits4 ;
   u8 lbits6 ;
   u8 rbits6 ;
};
struct netns_xfrm {
   struct list_head state_all ;
   struct hlist_head *state_bydst ;
   struct hlist_head *state_bysrc ;
   struct hlist_head *state_byspi ;
   unsigned int state_hmask ;
   unsigned int state_num ;
   struct work_struct state_hash_work ;
   struct hlist_head state_gc_list ;
   struct work_struct state_gc_work ;
   struct list_head policy_all ;
   struct hlist_head *policy_byidx ;
   unsigned int policy_idx_hmask ;
   struct hlist_head policy_inexact[3U] ;
   struct xfrm_policy_hash policy_bydst[3U] ;
   unsigned int policy_count[6U] ;
   struct work_struct policy_hash_work ;
   struct xfrm_policy_hthresh policy_hthresh ;
   struct sock *nlsk ;
   struct sock *nlsk_stash ;
   u32 sysctl_aevent_etime ;
   u32 sysctl_aevent_rseqth ;
   int sysctl_larval_drop ;
   u32 sysctl_acq_expires ;
   struct ctl_table_header *sysctl_hdr ;
   struct dst_ops xfrm4_dst_ops ;
   struct dst_ops xfrm6_dst_ops ;
   spinlock_t xfrm_state_lock ;
   rwlock_t xfrm_policy_lock ;
   struct mutex xfrm_cfg_mutex ;
   struct flow_cache flow_cache_global ;
   atomic_t flow_cache_genid ;
   struct list_head flow_cache_gc_list ;
   spinlock_t flow_cache_gc_lock ;
   struct work_struct flow_cache_gc_work ;
   struct work_struct flow_cache_flush_work ;
   struct mutex flow_flush_sem ;
};
struct mpls_route;
struct netns_mpls {
   size_t platform_labels ;
   struct mpls_route **platform_label ;
   struct ctl_table_header *ctl ;
};
struct net_generic;
struct netns_ipvs;
struct net {
   atomic_t passive ;
   atomic_t count ;
   spinlock_t rules_mod_lock ;
   atomic64_t cookie_gen ;
   struct list_head list ;
   struct list_head cleanup_list ;
   struct list_head exit_list ;
   struct user_namespace *user_ns ;
   spinlock_t nsid_lock ;
   struct idr netns_ids ;
   struct ns_common ns ;
   struct proc_dir_entry *proc_net ;
   struct proc_dir_entry *proc_net_stat ;
   struct ctl_table_set sysctls ;
   struct sock *rtnl ;
   struct sock *genl_sock ;
   struct list_head dev_base_head ;
   struct hlist_head *dev_name_head ;
   struct hlist_head *dev_index_head ;
   unsigned int dev_base_seq ;
   int ifindex ;
   unsigned int dev_unreg_count ;
   struct list_head rules_ops ;
   struct net_device *loopback_dev ;
   struct netns_core core ;
   struct netns_mib mib ;
   struct netns_packet packet ;
   struct netns_unix unx ;
   struct netns_ipv4 ipv4 ;
   struct netns_ipv6 ipv6 ;
   struct netns_ieee802154_lowpan ieee802154_lowpan ;
   struct netns_sctp sctp ;
   struct netns_dccp dccp ;
   struct netns_nf nf ;
   struct netns_xt xt ;
   struct netns_ct ct ;
   struct netns_nftables nft ;
   struct netns_nf_frag nf_frag ;
   struct sock *nfnl ;
   struct sock *nfnl_stash ;
   struct sk_buff_head wext_nlevents ;
   struct net_generic *gen ;
   struct netns_xfrm xfrm ;
   struct netns_ipvs *ipvs ;
   struct netns_mpls mpls ;
   struct sock *diag_nlsk ;
   atomic_t fnhe_genid ;
};
struct __anonstruct_possible_net_t_308 {
   struct net *net ;
};
typedef struct __anonstruct_possible_net_t_308 possible_net_t;
typedef unsigned long kernel_ulong_t;
struct acpi_device_id {
   __u8 id[9U] ;
   kernel_ulong_t driver_data ;
};
struct of_device_id {
   char name[32U] ;
   char type[32U] ;
   char compatible[128U] ;
   void const *data ;
};
enum fwnode_type {
    FWNODE_INVALID = 0,
    FWNODE_OF = 1,
    FWNODE_ACPI = 2,
    FWNODE_PDATA = 3
} ;
struct fwnode_handle {
   enum fwnode_type type ;
   struct fwnode_handle *secondary ;
};
typedef u32 phandle;
struct property {
   char *name ;
   int length ;
   void *value ;
   struct property *next ;
   unsigned long _flags ;
   unsigned int unique_id ;
   struct bin_attribute attr ;
};
struct device_node {
   char const *name ;
   char const *type ;
   phandle phandle ;
   char const *full_name ;
   struct fwnode_handle fwnode ;
   struct property *properties ;
   struct property *deadprops ;
   struct device_node *parent ;
   struct device_node *child ;
   struct device_node *sibling ;
   struct kobject kobj ;
   unsigned long _flags ;
   void *data ;
};
enum ldv_28763 {
    PHY_INTERFACE_MODE_NA = 0,
    PHY_INTERFACE_MODE_MII = 1,
    PHY_INTERFACE_MODE_GMII = 2,
    PHY_INTERFACE_MODE_SGMII = 3,
    PHY_INTERFACE_MODE_TBI = 4,
    PHY_INTERFACE_MODE_REVMII = 5,
    PHY_INTERFACE_MODE_RMII = 6,
    PHY_INTERFACE_MODE_RGMII = 7,
    PHY_INTERFACE_MODE_RGMII_ID = 8,
    PHY_INTERFACE_MODE_RGMII_RXID = 9,
    PHY_INTERFACE_MODE_RGMII_TXID = 10,
    PHY_INTERFACE_MODE_RTBI = 11,
    PHY_INTERFACE_MODE_SMII = 12,
    PHY_INTERFACE_MODE_XGMII = 13,
    PHY_INTERFACE_MODE_MOCA = 14,
    PHY_INTERFACE_MODE_QSGMII = 15,
    PHY_INTERFACE_MODE_MAX = 16
} ;
typedef enum ldv_28763 phy_interface_t;
enum ldv_28817 {
    MDIOBUS_ALLOCATED = 1,
    MDIOBUS_REGISTERED = 2,
    MDIOBUS_UNREGISTERED = 3,
    MDIOBUS_RELEASED = 4
} ;
struct phy_device;
struct mii_bus {
   char const *name ;
   char id[17U] ;
   void *priv ;
   int (*read)(struct mii_bus * , int , int ) ;
   int (*write)(struct mii_bus * , int , int , u16 ) ;
   int (*reset)(struct mii_bus * ) ;
   struct mutex mdio_lock ;
   struct device *parent ;
   enum ldv_28817 state ;
   struct device dev ;
   struct phy_device *phy_map[32U] ;
   u32 phy_mask ;
   u32 phy_ignore_ta_mask ;
   int *irq ;
};
enum phy_state {
    PHY_DOWN = 0,
    PHY_STARTING = 1,
    PHY_READY = 2,
    PHY_PENDING = 3,
    PHY_UP = 4,
    PHY_AN = 5,
    PHY_RUNNING = 6,
    PHY_NOLINK = 7,
    PHY_FORCING = 8,
    PHY_CHANGELINK = 9,
    PHY_HALTED = 10,
    PHY_RESUMING = 11
} ;
struct phy_c45_device_ids {
   u32 devices_in_package ;
   u32 device_ids[8U] ;
};
struct phy_driver;
struct phy_device {
   struct phy_driver *drv ;
   struct mii_bus *bus ;
   struct device dev ;
   u32 phy_id ;
   struct phy_c45_device_ids c45_ids ;
   bool is_c45 ;
   bool is_internal ;
   bool has_fixups ;
   bool suspended ;
   enum phy_state state ;
   u32 dev_flags ;
   phy_interface_t interface ;
   int addr ;
   int speed ;
   int duplex ;
   int pause ;
   int asym_pause ;
   int link ;
   u32 interrupts ;
   u32 supported ;
   u32 advertising ;
   u32 lp_advertising ;
   int autoneg ;
   int link_timeout ;
   int irq ;
   void *priv ;
   struct work_struct phy_queue ;
   struct delayed_work state_queue ;
   atomic_t irq_disable ;
   struct mutex lock ;
   struct net_device *attached_dev ;
   void (*adjust_link)(struct net_device * ) ;
};
struct phy_driver {
   u32 phy_id ;
   char *name ;
   unsigned int phy_id_mask ;
   u32 features ;
   u32 flags ;
   void const *driver_data ;
   int (*soft_reset)(struct phy_device * ) ;
   int (*config_init)(struct phy_device * ) ;
   int (*probe)(struct phy_device * ) ;
   int (*suspend)(struct phy_device * ) ;
   int (*resume)(struct phy_device * ) ;
   int (*config_aneg)(struct phy_device * ) ;
   int (*aneg_done)(struct phy_device * ) ;
   int (*read_status)(struct phy_device * ) ;
   int (*ack_interrupt)(struct phy_device * ) ;
   int (*config_intr)(struct phy_device * ) ;
   int (*did_interrupt)(struct phy_device * ) ;
   void (*remove)(struct phy_device * ) ;
   int (*match_phy_device)(struct phy_device * ) ;
   int (*ts_info)(struct phy_device * , struct ethtool_ts_info * ) ;
   int (*hwtstamp)(struct phy_device * , struct ifreq * ) ;
   bool (*rxtstamp)(struct phy_device * , struct sk_buff * , int ) ;
   void (*txtstamp)(struct phy_device * , struct sk_buff * , int ) ;
   int (*set_wol)(struct phy_device * , struct ethtool_wolinfo * ) ;
   void (*get_wol)(struct phy_device * , struct ethtool_wolinfo * ) ;
   void (*link_change_notify)(struct phy_device * ) ;
   int (*read_mmd_indirect)(struct phy_device * , int , int , int ) ;
   void (*write_mmd_indirect)(struct phy_device * , int , int , int , u32 ) ;
   int (*module_info)(struct phy_device * , struct ethtool_modinfo * ) ;
   int (*module_eeprom)(struct phy_device * , struct ethtool_eeprom * , u8 * ) ;
   struct device_driver driver ;
};
struct fixed_phy_status {
   int link ;
   int speed ;
   int duplex ;
   int pause ;
   int asym_pause ;
};
enum dsa_tag_protocol {
    DSA_TAG_PROTO_NONE = 0,
    DSA_TAG_PROTO_DSA = 1,
    DSA_TAG_PROTO_TRAILER = 2,
    DSA_TAG_PROTO_EDSA = 3,
    DSA_TAG_PROTO_BRCM = 4
} ;
struct dsa_chip_data {
   struct device *host_dev ;
   int sw_addr ;
   int eeprom_len ;
   struct device_node *of_node ;
   char *port_names[12U] ;
   struct device_node *port_dn[12U] ;
   s8 *rtable ;
};
struct dsa_platform_data {
   struct device *netdev ;
   struct net_device *of_netdev ;
   int nr_chips ;
   struct dsa_chip_data *chip ;
};
struct packet_type;
struct dsa_switch;
struct dsa_switch_tree {
   struct dsa_platform_data *pd ;
   struct net_device *master_netdev ;
   int (*rcv)(struct sk_buff * , struct net_device * , struct packet_type * , struct net_device * ) ;
   enum dsa_tag_protocol tag_protocol ;
   s8 cpu_switch ;
   s8 cpu_port ;
   int link_poll_needed ;
   struct work_struct link_poll_work ;
   struct timer_list link_poll_timer ;
   struct dsa_switch *ds[4U] ;
};
struct dsa_switch_driver;
struct dsa_switch {
   struct dsa_switch_tree *dst ;
   int index ;
   enum dsa_tag_protocol tag_protocol ;
   struct dsa_chip_data *pd ;
   struct dsa_switch_driver *drv ;
   struct device *master_dev ;
   char hwmon_name[24U] ;
   struct device *hwmon_dev ;
   u32 dsa_port_mask ;
   u32 phys_port_mask ;
   u32 phys_mii_mask ;
   struct mii_bus *slave_mii_bus ;
   struct net_device *ports[12U] ;
};
struct dsa_switch_driver {
   struct list_head list ;
   enum dsa_tag_protocol tag_protocol ;
   int priv_size ;
   char *(*probe)(struct device * , int ) ;
   int (*setup)(struct dsa_switch * ) ;
   int (*set_addr)(struct dsa_switch * , u8 * ) ;
   u32 (*get_phy_flags)(struct dsa_switch * , int ) ;
   int (*phy_read)(struct dsa_switch * , int , int ) ;
   int (*phy_write)(struct dsa_switch * , int , int , u16 ) ;
   void (*poll_link)(struct dsa_switch * ) ;
   void (*adjust_link)(struct dsa_switch * , int , struct phy_device * ) ;
   void (*fixed_link_update)(struct dsa_switch * , int , struct fixed_phy_status * ) ;
   void (*get_strings)(struct dsa_switch * , int , uint8_t * ) ;
   void (*get_ethtool_stats)(struct dsa_switch * , int , uint64_t * ) ;
   int (*get_sset_count)(struct dsa_switch * ) ;
   void (*get_wol)(struct dsa_switch * , int , struct ethtool_wolinfo * ) ;
   int (*set_wol)(struct dsa_switch * , int , struct ethtool_wolinfo * ) ;
   int (*suspend)(struct dsa_switch * ) ;
   int (*resume)(struct dsa_switch * ) ;
   int (*port_enable)(struct dsa_switch * , int , struct phy_device * ) ;
   void (*port_disable)(struct dsa_switch * , int , struct phy_device * ) ;
   int (*set_eee)(struct dsa_switch * , int , struct phy_device * , struct ethtool_eee * ) ;
   int (*get_eee)(struct dsa_switch * , int , struct ethtool_eee * ) ;
   int (*get_temp)(struct dsa_switch * , int * ) ;
   int (*get_temp_limit)(struct dsa_switch * , int * ) ;
   int (*set_temp_limit)(struct dsa_switch * , int ) ;
   int (*get_temp_alarm)(struct dsa_switch * , bool * ) ;
   int (*get_eeprom_len)(struct dsa_switch * ) ;
   int (*get_eeprom)(struct dsa_switch * , struct ethtool_eeprom * , u8 * ) ;
   int (*set_eeprom)(struct dsa_switch * , struct ethtool_eeprom * , u8 * ) ;
   int (*get_regs_len)(struct dsa_switch * , int ) ;
   void (*get_regs)(struct dsa_switch * , int , struct ethtool_regs * , void * ) ;
   int (*port_join_bridge)(struct dsa_switch * , int , u32 ) ;
   int (*port_leave_bridge)(struct dsa_switch * , int , u32 ) ;
   int (*port_stp_update)(struct dsa_switch * , int , u8 ) ;
   int (*fdb_add)(struct dsa_switch * , int , unsigned char const * , u16 ) ;
   int (*fdb_del)(struct dsa_switch * , int , unsigned char const * , u16 ) ;
   int (*fdb_getnext)(struct dsa_switch * , int , unsigned char * , bool * ) ;
};
struct ieee_ets {
   __u8 willing ;
   __u8 ets_cap ;
   __u8 cbs ;
   __u8 tc_tx_bw[8U] ;
   __u8 tc_rx_bw[8U] ;
   __u8 tc_tsa[8U] ;
   __u8 prio_tc[8U] ;
   __u8 tc_reco_bw[8U] ;
   __u8 tc_reco_tsa[8U] ;
   __u8 reco_prio_tc[8U] ;
};
struct ieee_maxrate {
   __u64 tc_maxrate[8U] ;
};
struct ieee_qcn {
   __u8 rpg_enable[8U] ;
   __u32 rppp_max_rps[8U] ;
   __u32 rpg_time_reset[8U] ;
   __u32 rpg_byte_reset[8U] ;
   __u32 rpg_threshold[8U] ;
   __u32 rpg_max_rate[8U] ;
   __u32 rpg_ai_rate[8U] ;
   __u32 rpg_hai_rate[8U] ;
   __u32 rpg_gd[8U] ;
   __u32 rpg_min_dec_fac[8U] ;
   __u32 rpg_min_rate[8U] ;
   __u32 cndd_state_machine[8U] ;
};
struct ieee_qcn_stats {
   __u64 rppp_rp_centiseconds[8U] ;
   __u32 rppp_created_rps[8U] ;
};
struct ieee_pfc {
   __u8 pfc_cap ;
   __u8 pfc_en ;
   __u8 mbc ;
   __u16 delay ;
   __u64 requests[8U] ;
   __u64 indications[8U] ;
};
struct cee_pg {
   __u8 willing ;
   __u8 error ;
   __u8 pg_en ;
   __u8 tcs_supported ;
   __u8 pg_bw[8U] ;
   __u8 prio_pg[8U] ;
};
struct cee_pfc {
   __u8 willing ;
   __u8 error ;
   __u8 pfc_en ;
   __u8 tcs_supported ;
};
struct dcb_app {
   __u8 selector ;
   __u8 priority ;
   __u16 protocol ;
};
struct dcb_peer_app_info {
   __u8 willing ;
   __u8 error ;
};
struct dcbnl_rtnl_ops {
   int (*ieee_getets)(struct net_device * , struct ieee_ets * ) ;
   int (*ieee_setets)(struct net_device * , struct ieee_ets * ) ;
   int (*ieee_getmaxrate)(struct net_device * , struct ieee_maxrate * ) ;
   int (*ieee_setmaxrate)(struct net_device * , struct ieee_maxrate * ) ;
   int (*ieee_getqcn)(struct net_device * , struct ieee_qcn * ) ;
   int (*ieee_setqcn)(struct net_device * , struct ieee_qcn * ) ;
   int (*ieee_getqcnstats)(struct net_device * , struct ieee_qcn_stats * ) ;
   int (*ieee_getpfc)(struct net_device * , struct ieee_pfc * ) ;
   int (*ieee_setpfc)(struct net_device * , struct ieee_pfc * ) ;
   int (*ieee_getapp)(struct net_device * , struct dcb_app * ) ;
   int (*ieee_setapp)(struct net_device * , struct dcb_app * ) ;
   int (*ieee_delapp)(struct net_device * , struct dcb_app * ) ;
   int (*ieee_peer_getets)(struct net_device * , struct ieee_ets * ) ;
   int (*ieee_peer_getpfc)(struct net_device * , struct ieee_pfc * ) ;
   u8 (*getstate)(struct net_device * ) ;
   u8 (*setstate)(struct net_device * , u8 ) ;
   void (*getpermhwaddr)(struct net_device * , u8 * ) ;
   void (*setpgtccfgtx)(struct net_device * , int , u8 , u8 , u8 , u8 ) ;
   void (*setpgbwgcfgtx)(struct net_device * , int , u8 ) ;
   void (*setpgtccfgrx)(struct net_device * , int , u8 , u8 , u8 , u8 ) ;
   void (*setpgbwgcfgrx)(struct net_device * , int , u8 ) ;
   void (*getpgtccfgtx)(struct net_device * , int , u8 * , u8 * , u8 * , u8 * ) ;
   void (*getpgbwgcfgtx)(struct net_device * , int , u8 * ) ;
   void (*getpgtccfgrx)(struct net_device * , int , u8 * , u8 * , u8 * , u8 * ) ;
   void (*getpgbwgcfgrx)(struct net_device * , int , u8 * ) ;
   void (*setpfccfg)(struct net_device * , int , u8 ) ;
   void (*getpfccfg)(struct net_device * , int , u8 * ) ;
   u8 (*setall)(struct net_device * ) ;
   u8 (*getcap)(struct net_device * , int , u8 * ) ;
   int (*getnumtcs)(struct net_device * , int , u8 * ) ;
   int (*setnumtcs)(struct net_device * , int , u8 ) ;
   u8 (*getpfcstate)(struct net_device * ) ;
   void (*setpfcstate)(struct net_device * , u8 ) ;
   void (*getbcncfg)(struct net_device * , int , u32 * ) ;
   void (*setbcncfg)(struct net_device * , int , u32 ) ;
   void (*getbcnrp)(struct net_device * , int , u8 * ) ;
   void (*setbcnrp)(struct net_device * , int , u8 ) ;
   int (*setapp)(struct net_device * , u8 , u16 , u8 ) ;
   int (*getapp)(struct net_device * , u8 , u16 ) ;
   u8 (*getfeatcfg)(struct net_device * , int , u8 * ) ;
   u8 (*setfeatcfg)(struct net_device * , int , u8 ) ;
   u8 (*getdcbx)(struct net_device * ) ;
   u8 (*setdcbx)(struct net_device * , u8 ) ;
   int (*peer_getappinfo)(struct net_device * , struct dcb_peer_app_info * , u16 * ) ;
   int (*peer_getapptable)(struct net_device * , struct dcb_app * ) ;
   int (*cee_peer_getpg)(struct net_device * , struct cee_pg * ) ;
   int (*cee_peer_getpfc)(struct net_device * , struct cee_pfc * ) ;
};
struct taskstats {
   __u16 version ;
   __u32 ac_exitcode ;
   __u8 ac_flag ;
   __u8 ac_nice ;
   __u64 cpu_count ;
   __u64 cpu_delay_total ;
   __u64 blkio_count ;
   __u64 blkio_delay_total ;
   __u64 swapin_count ;
   __u64 swapin_delay_total ;
   __u64 cpu_run_real_total ;
   __u64 cpu_run_virtual_total ;
   char ac_comm[32U] ;
   __u8 ac_sched ;
   __u8 ac_pad[3U] ;
   __u32 ac_uid ;
   __u32 ac_gid ;
   __u32 ac_pid ;
   __u32 ac_ppid ;
   __u32 ac_btime ;
   __u64 ac_etime ;
   __u64 ac_utime ;
   __u64 ac_stime ;
   __u64 ac_minflt ;
   __u64 ac_majflt ;
   __u64 coremem ;
   __u64 virtmem ;
   __u64 hiwater_rss ;
   __u64 hiwater_vm ;
   __u64 read_char ;
   __u64 write_char ;
   __u64 read_syscalls ;
   __u64 write_syscalls ;
   __u64 read_bytes ;
   __u64 write_bytes ;
   __u64 cancelled_write_bytes ;
   __u64 nvcsw ;
   __u64 nivcsw ;
   __u64 ac_utimescaled ;
   __u64 ac_stimescaled ;
   __u64 cpu_scaled_run_real_total ;
   __u64 freepages_count ;
   __u64 freepages_delay_total ;
};
struct netprio_map {
   struct callback_head rcu ;
   u32 priomap_len ;
   u32 priomap[] ;
};
struct xfrm_policy;
struct xfrm_state;
struct nlmsghdr {
   __u32 nlmsg_len ;
   __u16 nlmsg_type ;
   __u16 nlmsg_flags ;
   __u32 nlmsg_seq ;
   __u32 nlmsg_pid ;
};
struct nlattr {
   __u16 nla_len ;
   __u16 nla_type ;
};
struct netlink_callback {
   struct sk_buff *skb ;
   struct nlmsghdr const *nlh ;
   int (*dump)(struct sk_buff * , struct netlink_callback * ) ;
   int (*done)(struct netlink_callback * ) ;
   void *data ;
   struct module *module ;
   u16 family ;
   u16 min_dump_alloc ;
   unsigned int prev_seq ;
   unsigned int seq ;
   long args[6U] ;
};
struct ndmsg {
   __u8 ndm_family ;
   __u8 ndm_pad1 ;
   __u16 ndm_pad2 ;
   __s32 ndm_ifindex ;
   __u16 ndm_state ;
   __u8 ndm_flags ;
   __u8 ndm_type ;
};
struct rtnl_link_stats64 {
   __u64 rx_packets ;
   __u64 tx_packets ;
   __u64 rx_bytes ;
   __u64 tx_bytes ;
   __u64 rx_errors ;
   __u64 tx_errors ;
   __u64 rx_dropped ;
   __u64 tx_dropped ;
   __u64 multicast ;
   __u64 collisions ;
   __u64 rx_length_errors ;
   __u64 rx_over_errors ;
   __u64 rx_crc_errors ;
   __u64 rx_frame_errors ;
   __u64 rx_fifo_errors ;
   __u64 rx_missed_errors ;
   __u64 tx_aborted_errors ;
   __u64 tx_carrier_errors ;
   __u64 tx_fifo_errors ;
   __u64 tx_heartbeat_errors ;
   __u64 tx_window_errors ;
   __u64 rx_compressed ;
   __u64 tx_compressed ;
};
struct ifla_vf_stats {
   __u64 rx_packets ;
   __u64 tx_packets ;
   __u64 rx_bytes ;
   __u64 tx_bytes ;
   __u64 broadcast ;
   __u64 multicast ;
};
struct ifla_vf_info {
   __u32 vf ;
   __u8 mac[32U] ;
   __u32 vlan ;
   __u32 qos ;
   __u32 spoofchk ;
   __u32 linkstate ;
   __u32 min_tx_rate ;
   __u32 max_tx_rate ;
   __u32 rss_query_en ;
};
struct netpoll_info;
struct wireless_dev;
struct wpan_dev;
struct mpls_dev;
enum netdev_tx {
    __NETDEV_TX_MIN = (-0x7FFFFFFF-1),
    NETDEV_TX_OK = 0,
    NETDEV_TX_BUSY = 16,
    NETDEV_TX_LOCKED = 32
} ;
typedef enum netdev_tx netdev_tx_t;
struct net_device_stats {
   unsigned long rx_packets ;
   unsigned long tx_packets ;
   unsigned long rx_bytes ;
   unsigned long tx_bytes ;
   unsigned long rx_errors ;
   unsigned long tx_errors ;
   unsigned long rx_dropped ;
   unsigned long tx_dropped ;
   unsigned long multicast ;
   unsigned long collisions ;
   unsigned long rx_length_errors ;
   unsigned long rx_over_errors ;
   unsigned long rx_crc_errors ;
   unsigned long rx_frame_errors ;
   unsigned long rx_fifo_errors ;
   unsigned long rx_missed_errors ;
   unsigned long tx_aborted_errors ;
   unsigned long tx_carrier_errors ;
   unsigned long tx_fifo_errors ;
   unsigned long tx_heartbeat_errors ;
   unsigned long tx_window_errors ;
   unsigned long rx_compressed ;
   unsigned long tx_compressed ;
};
struct neigh_parms;
struct netdev_hw_addr_list {
   struct list_head list ;
   int count ;
};
struct hh_cache {
   u16 hh_len ;
   u16 __pad ;
   seqlock_t hh_lock ;
   unsigned long hh_data[16U] ;
};
struct header_ops {
   int (*create)(struct sk_buff * , struct net_device * , unsigned short , void const * ,
                 void const * , unsigned int ) ;
   int (*parse)(struct sk_buff const * , unsigned char * ) ;
   int (*cache)(struct neighbour const * , struct hh_cache * , __be16 ) ;
   void (*cache_update)(struct hh_cache * , struct net_device const * , unsigned char const * ) ;
};
struct napi_struct {
   struct list_head poll_list ;
   unsigned long state ;
   int weight ;
   unsigned int gro_count ;
   int (*poll)(struct napi_struct * , int ) ;
   spinlock_t poll_lock ;
   int poll_owner ;
   struct net_device *dev ;
   struct sk_buff *gro_list ;
   struct sk_buff *skb ;
   struct hrtimer timer ;
   struct list_head dev_list ;
   struct hlist_node napi_hash_node ;
   unsigned int napi_id ;
};
enum rx_handler_result {
    RX_HANDLER_CONSUMED = 0,
    RX_HANDLER_ANOTHER = 1,
    RX_HANDLER_EXACT = 2,
    RX_HANDLER_PASS = 3
} ;
typedef enum rx_handler_result rx_handler_result_t;
typedef rx_handler_result_t rx_handler_func_t(struct sk_buff ** );
struct Qdisc;
struct netdev_queue {
   struct net_device *dev ;
   struct Qdisc *qdisc ;
   struct Qdisc *qdisc_sleeping ;
   struct kobject kobj ;
   int numa_node ;
   spinlock_t _xmit_lock ;
   int xmit_lock_owner ;
   unsigned long trans_start ;
   unsigned long trans_timeout ;
   unsigned long state ;
   struct dql dql ;
   unsigned long tx_maxrate ;
};
struct rps_map {
   unsigned int len ;
   struct callback_head rcu ;
   u16 cpus[0U] ;
};
struct rps_dev_flow {
   u16 cpu ;
   u16 filter ;
   unsigned int last_qtail ;
};
struct rps_dev_flow_table {
   unsigned int mask ;
   struct callback_head rcu ;
   struct rps_dev_flow flows[0U] ;
};
struct netdev_rx_queue {
   struct rps_map *rps_map ;
   struct rps_dev_flow_table *rps_flow_table ;
   struct kobject kobj ;
   struct net_device *dev ;
};
struct xps_map {
   unsigned int len ;
   unsigned int alloc_len ;
   struct callback_head rcu ;
   u16 queues[0U] ;
};
struct xps_dev_maps {
   struct callback_head rcu ;
   struct xps_map *cpu_map[0U] ;
};
struct netdev_tc_txq {
   u16 count ;
   u16 offset ;
};
struct netdev_fcoe_hbainfo {
   char manufacturer[64U] ;
   char serial_number[64U] ;
   char hardware_version[64U] ;
   char driver_version[64U] ;
   char optionrom_version[64U] ;
   char firmware_version[64U] ;
   char model[256U] ;
   char model_description[256U] ;
};
struct netdev_phys_item_id {
   unsigned char id[32U] ;
   unsigned char id_len ;
};
struct net_device_ops {
   int (*ndo_init)(struct net_device * ) ;
   void (*ndo_uninit)(struct net_device * ) ;
   int (*ndo_open)(struct net_device * ) ;
   int (*ndo_stop)(struct net_device * ) ;
   netdev_tx_t (*ndo_start_xmit)(struct sk_buff * , struct net_device * ) ;
   u16 (*ndo_select_queue)(struct net_device * , struct sk_buff * , void * , u16 (*)(struct net_device * ,
                                                                                     struct sk_buff * ) ) ;
   void (*ndo_change_rx_flags)(struct net_device * , int ) ;
   void (*ndo_set_rx_mode)(struct net_device * ) ;
   int (*ndo_set_mac_address)(struct net_device * , void * ) ;
   int (*ndo_validate_addr)(struct net_device * ) ;
   int (*ndo_do_ioctl)(struct net_device * , struct ifreq * , int ) ;
   int (*ndo_set_config)(struct net_device * , struct ifmap * ) ;
   int (*ndo_change_mtu)(struct net_device * , int ) ;
   int (*ndo_neigh_setup)(struct net_device * , struct neigh_parms * ) ;
   void (*ndo_tx_timeout)(struct net_device * ) ;
   struct rtnl_link_stats64 *(*ndo_get_stats64)(struct net_device * , struct rtnl_link_stats64 * ) ;
   struct net_device_stats *(*ndo_get_stats)(struct net_device * ) ;
   int (*ndo_vlan_rx_add_vid)(struct net_device * , __be16 , u16 ) ;
   int (*ndo_vlan_rx_kill_vid)(struct net_device * , __be16 , u16 ) ;
   void (*ndo_poll_controller)(struct net_device * ) ;
   int (*ndo_netpoll_setup)(struct net_device * , struct netpoll_info * ) ;
   void (*ndo_netpoll_cleanup)(struct net_device * ) ;
   int (*ndo_busy_poll)(struct napi_struct * ) ;
   int (*ndo_set_vf_mac)(struct net_device * , int , u8 * ) ;
   int (*ndo_set_vf_vlan)(struct net_device * , int , u16 , u8 ) ;
   int (*ndo_set_vf_rate)(struct net_device * , int , int , int ) ;
   int (*ndo_set_vf_spoofchk)(struct net_device * , int , bool ) ;
   int (*ndo_get_vf_config)(struct net_device * , int , struct ifla_vf_info * ) ;
   int (*ndo_set_vf_link_state)(struct net_device * , int , int ) ;
   int (*ndo_get_vf_stats)(struct net_device * , int , struct ifla_vf_stats * ) ;
   int (*ndo_set_vf_port)(struct net_device * , int , struct nlattr ** ) ;
   int (*ndo_get_vf_port)(struct net_device * , int , struct sk_buff * ) ;
   int (*ndo_set_vf_rss_query_en)(struct net_device * , int , bool ) ;
   int (*ndo_setup_tc)(struct net_device * , u8 ) ;
   int (*ndo_fcoe_enable)(struct net_device * ) ;
   int (*ndo_fcoe_disable)(struct net_device * ) ;
   int (*ndo_fcoe_ddp_setup)(struct net_device * , u16 , struct scatterlist * , unsigned int ) ;
   int (*ndo_fcoe_ddp_done)(struct net_device * , u16 ) ;
   int (*ndo_fcoe_ddp_target)(struct net_device * , u16 , struct scatterlist * ,
                              unsigned int ) ;
   int (*ndo_fcoe_get_hbainfo)(struct net_device * , struct netdev_fcoe_hbainfo * ) ;
   int (*ndo_fcoe_get_wwn)(struct net_device * , u64 * , int ) ;
   int (*ndo_rx_flow_steer)(struct net_device * , struct sk_buff const * , u16 ,
                            u32 ) ;
   int (*ndo_add_slave)(struct net_device * , struct net_device * ) ;
   int (*ndo_del_slave)(struct net_device * , struct net_device * ) ;
   netdev_features_t (*ndo_fix_features)(struct net_device * , netdev_features_t ) ;
   int (*ndo_set_features)(struct net_device * , netdev_features_t ) ;
   int (*ndo_neigh_construct)(struct neighbour * ) ;
   void (*ndo_neigh_destroy)(struct neighbour * ) ;
   int (*ndo_fdb_add)(struct ndmsg * , struct nlattr ** , struct net_device * , unsigned char const * ,
                      u16 , u16 ) ;
   int (*ndo_fdb_del)(struct ndmsg * , struct nlattr ** , struct net_device * , unsigned char const * ,
                      u16 ) ;
   int (*ndo_fdb_dump)(struct sk_buff * , struct netlink_callback * , struct net_device * ,
                       struct net_device * , int ) ;
   int (*ndo_bridge_setlink)(struct net_device * , struct nlmsghdr * , u16 ) ;
   int (*ndo_bridge_getlink)(struct sk_buff * , u32 , u32 , struct net_device * ,
                             u32 , int ) ;
   int (*ndo_bridge_dellink)(struct net_device * , struct nlmsghdr * , u16 ) ;
   int (*ndo_change_carrier)(struct net_device * , bool ) ;
   int (*ndo_get_phys_port_id)(struct net_device * , struct netdev_phys_item_id * ) ;
   int (*ndo_get_phys_port_name)(struct net_device * , char * , size_t ) ;
   void (*ndo_add_vxlan_port)(struct net_device * , sa_family_t , __be16 ) ;
   void (*ndo_del_vxlan_port)(struct net_device * , sa_family_t , __be16 ) ;
   void *(*ndo_dfwd_add_station)(struct net_device * , struct net_device * ) ;
   void (*ndo_dfwd_del_station)(struct net_device * , void * ) ;
   netdev_tx_t (*ndo_dfwd_start_xmit)(struct sk_buff * , struct net_device * , void * ) ;
   int (*ndo_get_lock_subclass)(struct net_device * ) ;
   netdev_features_t (*ndo_features_check)(struct sk_buff * , struct net_device * ,
                                           netdev_features_t ) ;
   int (*ndo_set_tx_maxrate)(struct net_device * , int , u32 ) ;
   int (*ndo_get_iflink)(struct net_device const * ) ;
};
struct __anonstruct_adj_list_321 {
   struct list_head upper ;
   struct list_head lower ;
};
struct __anonstruct_all_adj_list_322 {
   struct list_head upper ;
   struct list_head lower ;
};
struct iw_handler_def;
struct iw_public_data;
struct switchdev_ops;
struct vlan_info;
struct tipc_bearer;
struct in_device;
struct dn_dev;
struct inet6_dev;
struct tcf_proto;
struct cpu_rmap;
struct pcpu_lstats;
struct pcpu_sw_netstats;
struct pcpu_dstats;
struct pcpu_vstats;
union __anonunion____missing_field_name_323 {
   void *ml_priv ;
   struct pcpu_lstats *lstats ;
   struct pcpu_sw_netstats *tstats ;
   struct pcpu_dstats *dstats ;
   struct pcpu_vstats *vstats ;
};
struct garp_port;
struct mrp_port;
struct rtnl_link_ops;
struct net_device {
   char name[16U] ;
   struct hlist_node name_hlist ;
   char *ifalias ;
   unsigned long mem_end ;
   unsigned long mem_start ;
   unsigned long base_addr ;
   int irq ;
   atomic_t carrier_changes ;
   unsigned long state ;
   struct list_head dev_list ;
   struct list_head napi_list ;
   struct list_head unreg_list ;
   struct list_head close_list ;
   struct list_head ptype_all ;
   struct list_head ptype_specific ;
   struct __anonstruct_adj_list_321 adj_list ;
   struct __anonstruct_all_adj_list_322 all_adj_list ;
   netdev_features_t features ;
   netdev_features_t hw_features ;
   netdev_features_t wanted_features ;
   netdev_features_t vlan_features ;
   netdev_features_t hw_enc_features ;
   netdev_features_t mpls_features ;
   int ifindex ;
   int group ;
   struct net_device_stats stats ;
   atomic_long_t rx_dropped ;
   atomic_long_t tx_dropped ;
   struct iw_handler_def const *wireless_handlers ;
   struct iw_public_data *wireless_data ;
   struct net_device_ops const *netdev_ops ;
   struct ethtool_ops const *ethtool_ops ;
   struct switchdev_ops const *switchdev_ops ;
   struct header_ops const *header_ops ;
   unsigned int flags ;
   unsigned int priv_flags ;
   unsigned short gflags ;
   unsigned short padded ;
   unsigned char operstate ;
   unsigned char link_mode ;
   unsigned char if_port ;
   unsigned char dma ;
   unsigned int mtu ;
   unsigned short type ;
   unsigned short hard_header_len ;
   unsigned short needed_headroom ;
   unsigned short needed_tailroom ;
   unsigned char perm_addr[32U] ;
   unsigned char addr_assign_type ;
   unsigned char addr_len ;
   unsigned short neigh_priv_len ;
   unsigned short dev_id ;
   unsigned short dev_port ;
   spinlock_t addr_list_lock ;
   unsigned char name_assign_type ;
   bool uc_promisc ;
   struct netdev_hw_addr_list uc ;
   struct netdev_hw_addr_list mc ;
   struct netdev_hw_addr_list dev_addrs ;
   struct kset *queues_kset ;
   unsigned int promiscuity ;
   unsigned int allmulti ;
   struct vlan_info *vlan_info ;
   struct dsa_switch_tree *dsa_ptr ;
   struct tipc_bearer *tipc_ptr ;
   void *atalk_ptr ;
   struct in_device *ip_ptr ;
   struct dn_dev *dn_ptr ;
   struct inet6_dev *ip6_ptr ;
   void *ax25_ptr ;
   struct wireless_dev *ieee80211_ptr ;
   struct wpan_dev *ieee802154_ptr ;
   struct mpls_dev *mpls_ptr ;
   unsigned long last_rx ;
   unsigned char *dev_addr ;
   struct netdev_rx_queue *_rx ;
   unsigned int num_rx_queues ;
   unsigned int real_num_rx_queues ;
   unsigned long gro_flush_timeout ;
   rx_handler_func_t *rx_handler ;
   void *rx_handler_data ;
   struct tcf_proto *ingress_cl_list ;
   struct netdev_queue *ingress_queue ;
   struct list_head nf_hooks_ingress ;
   unsigned char broadcast[32U] ;
   struct cpu_rmap *rx_cpu_rmap ;
   struct hlist_node index_hlist ;
   struct netdev_queue *_tx ;
   unsigned int num_tx_queues ;
   unsigned int real_num_tx_queues ;
   struct Qdisc *qdisc ;
   unsigned long tx_queue_len ;
   spinlock_t tx_global_lock ;
   int watchdog_timeo ;
   struct xps_dev_maps *xps_maps ;
   unsigned long trans_start ;
   struct timer_list watchdog_timer ;
   int *pcpu_refcnt ;
   struct list_head todo_list ;
   struct list_head link_watch_list ;
   unsigned char reg_state ;
   bool dismantle ;
   unsigned short rtnl_link_state ;
   void (*destructor)(struct net_device * ) ;
   struct netpoll_info *npinfo ;
   possible_net_t nd_net ;
   union __anonunion____missing_field_name_323 __annonCompField95 ;
   struct garp_port *garp_port ;
   struct mrp_port *mrp_port ;
   struct device dev ;
   struct attribute_group const *sysfs_groups[4U] ;
   struct attribute_group const *sysfs_rx_queue_group ;
   struct rtnl_link_ops const *rtnl_link_ops ;
   unsigned int gso_max_size ;
   u16 gso_max_segs ;
   u16 gso_min_segs ;
   struct dcbnl_rtnl_ops const *dcbnl_ops ;
   u8 num_tc ;
   struct netdev_tc_txq tc_to_txq[16U] ;
   u8 prio_tc_map[16U] ;
   unsigned int fcoe_ddp_xid ;
   struct netprio_map *priomap ;
   struct phy_device *phydev ;
   struct lock_class_key *qdisc_tx_busylock ;
};
struct packet_type {
   __be16 type ;
   struct net_device *dev ;
   int (*func)(struct sk_buff * , struct net_device * , struct packet_type * , struct net_device * ) ;
   bool (*id_match)(struct packet_type * , struct sock * ) ;
   void *af_packet_priv ;
   struct list_head list ;
};
struct pcpu_sw_netstats {
   u64 rx_packets ;
   u64 rx_bytes ;
   u64 tx_packets ;
   u64 tx_bytes ;
   struct u64_stats_sync syncp ;
};
struct page_counter {
   atomic_long_t count ;
   unsigned long limit ;
   struct page_counter *parent ;
   unsigned long watermark ;
   unsigned long failcnt ;
};
struct sock_filter {
   __u16 code ;
   __u8 jt ;
   __u8 jf ;
   __u32 k ;
};
struct bpf_insn {
   __u8 code ;
   unsigned char dst_reg : 4 ;
   unsigned char src_reg : 4 ;
   __s16 off ;
   __s32 imm ;
};
enum bpf_prog_type {
    BPF_PROG_TYPE_UNSPEC = 0,
    BPF_PROG_TYPE_SOCKET_FILTER = 1,
    BPF_PROG_TYPE_KPROBE = 2,
    BPF_PROG_TYPE_SCHED_CLS = 3,
    BPF_PROG_TYPE_SCHED_ACT = 4
} ;
struct bpf_prog_aux;
struct sock_fprog_kern {
   u16 len ;
   struct sock_filter *filter ;
};
union __anonunion____missing_field_name_334 {
   struct sock_filter insns[0U] ;
   struct bpf_insn insnsi[0U] ;
};
struct bpf_prog {
   u16 pages ;
   bool jited ;
   bool gpl_compatible ;
   u32 len ;
   enum bpf_prog_type type ;
   struct bpf_prog_aux *aux ;
   struct sock_fprog_kern *orig_prog ;
   unsigned int (*bpf_func)(struct sk_buff const * , struct bpf_insn const * ) ;
   union __anonunion____missing_field_name_334 __annonCompField100 ;
};
struct sk_filter {
   atomic_t refcnt ;
   struct callback_head rcu ;
   struct bpf_prog *prog ;
};
struct nla_policy {
   u16 type ;
   u16 len ;
};
struct rtnl_link_ops {
   struct list_head list ;
   char const *kind ;
   size_t priv_size ;
   void (*setup)(struct net_device * ) ;
   int maxtype ;
   struct nla_policy const *policy ;
   int (*validate)(struct nlattr ** , struct nlattr ** ) ;
   int (*newlink)(struct net * , struct net_device * , struct nlattr ** , struct nlattr ** ) ;
   int (*changelink)(struct net_device * , struct nlattr ** , struct nlattr ** ) ;
   void (*dellink)(struct net_device * , struct list_head * ) ;
   size_t (*get_size)(struct net_device const * ) ;
   int (*fill_info)(struct sk_buff * , struct net_device const * ) ;
   size_t (*get_xstats_size)(struct net_device const * ) ;
   int (*fill_xstats)(struct sk_buff * , struct net_device const * ) ;
   unsigned int (*get_num_tx_queues)(void) ;
   unsigned int (*get_num_rx_queues)(void) ;
   int slave_maxtype ;
   struct nla_policy const *slave_policy ;
   int (*slave_validate)(struct nlattr ** , struct nlattr ** ) ;
   int (*slave_changelink)(struct net_device * , struct net_device * , struct nlattr ** ,
                           struct nlattr ** ) ;
   size_t (*get_slave_size)(struct net_device const * , struct net_device const * ) ;
   int (*fill_slave_info)(struct sk_buff * , struct net_device const * , struct net_device const * ) ;
   struct net *(*get_link_net)(struct net_device const * ) ;
};
struct neigh_table;
struct neigh_parms {
   possible_net_t net ;
   struct net_device *dev ;
   struct list_head list ;
   int (*neigh_setup)(struct neighbour * ) ;
   void (*neigh_cleanup)(struct neighbour * ) ;
   struct neigh_table *tbl ;
   void *sysctl_table ;
   int dead ;
   atomic_t refcnt ;
   struct callback_head callback_head ;
   int reachable_time ;
   int data[13U] ;
   unsigned long data_state[1U] ;
};
struct neigh_statistics {
   unsigned long allocs ;
   unsigned long destroys ;
   unsigned long hash_grows ;
   unsigned long res_failed ;
   unsigned long lookups ;
   unsigned long hits ;
   unsigned long rcv_probes_mcast ;
   unsigned long rcv_probes_ucast ;
   unsigned long periodic_gc_runs ;
   unsigned long forced_gc_runs ;
   unsigned long unres_discards ;
};
struct neigh_ops;
struct neighbour {
   struct neighbour *next ;
   struct neigh_table *tbl ;
   struct neigh_parms *parms ;
   unsigned long confirmed ;
   unsigned long updated ;
   rwlock_t lock ;
   atomic_t refcnt ;
   struct sk_buff_head arp_queue ;
   unsigned int arp_queue_len_bytes ;
   struct timer_list timer ;
   unsigned long used ;
   atomic_t probes ;
   __u8 flags ;
   __u8 nud_state ;
   __u8 type ;
   __u8 dead ;
   seqlock_t ha_lock ;
   unsigned char ha[32U] ;
   struct hh_cache hh ;
   int (*output)(struct neighbour * , struct sk_buff * ) ;
   struct neigh_ops const *ops ;
   struct callback_head rcu ;
   struct net_device *dev ;
   u8 primary_key[0U] ;
};
struct neigh_ops {
   int family ;
   void (*solicit)(struct neighbour * , struct sk_buff * ) ;
   void (*error_report)(struct neighbour * , struct sk_buff * ) ;
   int (*output)(struct neighbour * , struct sk_buff * ) ;
   int (*connected_output)(struct neighbour * , struct sk_buff * ) ;
};
struct pneigh_entry {
   struct pneigh_entry *next ;
   possible_net_t net ;
   struct net_device *dev ;
   u8 flags ;
   u8 key[0U] ;
};
struct neigh_hash_table {
   struct neighbour **hash_buckets ;
   unsigned int hash_shift ;
   __u32 hash_rnd[4U] ;
   struct callback_head rcu ;
};
struct neigh_table {
   int family ;
   int entry_size ;
   int key_len ;
   __be16 protocol ;
   __u32 (*hash)(void const * , struct net_device const * , __u32 * ) ;
   bool (*key_eq)(struct neighbour const * , void const * ) ;
   int (*constructor)(struct neighbour * ) ;
   int (*pconstructor)(struct pneigh_entry * ) ;
   void (*pdestructor)(struct pneigh_entry * ) ;
   void (*proxy_redo)(struct sk_buff * ) ;
   char *id ;
   struct neigh_parms parms ;
   struct list_head parms_list ;
   int gc_interval ;
   int gc_thresh1 ;
   int gc_thresh2 ;
   int gc_thresh3 ;
   unsigned long last_flush ;
   struct delayed_work gc_work ;
   struct timer_list proxy_timer ;
   struct sk_buff_head proxy_queue ;
   atomic_t entries ;
   rwlock_t lock ;
   unsigned long last_rand ;
   struct neigh_statistics *stats ;
   struct neigh_hash_table *nht ;
   struct pneigh_entry **phash_buckets ;
};
struct dn_route;
union __anonunion____missing_field_name_344 {
   struct dst_entry *next ;
   struct rtable *rt_next ;
   struct rt6_info *rt6_next ;
   struct dn_route *dn_next ;
};
struct dst_entry {
   struct callback_head callback_head ;
   struct dst_entry *child ;
   struct net_device *dev ;
   struct dst_ops *ops ;
   unsigned long _metrics ;
   unsigned long expires ;
   struct dst_entry *path ;
   struct dst_entry *from ;
   struct xfrm_state *xfrm ;
   int (*input)(struct sk_buff * ) ;
   int (*output)(struct sock * , struct sk_buff * ) ;
   unsigned short flags ;
   unsigned short pending_confirm ;
   short error ;
   short obsolete ;
   unsigned short header_len ;
   unsigned short trailer_len ;
   __u32 tclassid ;
   long __pad_to_align_refcnt[2U] ;
   atomic_t __refcnt ;
   int __use ;
   unsigned long lastuse ;
   union __anonunion____missing_field_name_344 __annonCompField101 ;
};
struct __anonstruct_socket_lock_t_345 {
   spinlock_t slock ;
   int owned ;
   wait_queue_head_t wq ;
   struct lockdep_map dep_map ;
};
typedef struct __anonstruct_socket_lock_t_345 socket_lock_t;
struct proto;
typedef __u32 __portpair;
typedef __u64 __addrpair;
struct __anonstruct____missing_field_name_347 {
   __be32 skc_daddr ;
   __be32 skc_rcv_saddr ;
};
union __anonunion____missing_field_name_346 {
   __addrpair skc_addrpair ;
   struct __anonstruct____missing_field_name_347 __annonCompField102 ;
};
union __anonunion____missing_field_name_348 {
   unsigned int skc_hash ;
   __u16 skc_u16hashes[2U] ;
};
struct __anonstruct____missing_field_name_350 {
   __be16 skc_dport ;
   __u16 skc_num ;
};
union __anonunion____missing_field_name_349 {
   __portpair skc_portpair ;
   struct __anonstruct____missing_field_name_350 __annonCompField105 ;
};
union __anonunion____missing_field_name_351 {
   struct hlist_node skc_bind_node ;
   struct hlist_nulls_node skc_portaddr_node ;
};
union __anonunion____missing_field_name_352 {
   struct hlist_node skc_node ;
   struct hlist_nulls_node skc_nulls_node ;
};
struct sock_common {
   union __anonunion____missing_field_name_346 __annonCompField103 ;
   union __anonunion____missing_field_name_348 __annonCompField104 ;
   union __anonunion____missing_field_name_349 __annonCompField106 ;
   unsigned short skc_family ;
   unsigned char volatile skc_state ;
   unsigned char skc_reuse : 4 ;
   unsigned char skc_reuseport : 1 ;
   unsigned char skc_ipv6only : 1 ;
   unsigned char skc_net_refcnt : 1 ;
   int skc_bound_dev_if ;
   union __anonunion____missing_field_name_351 __annonCompField107 ;
   struct proto *skc_prot ;
   possible_net_t skc_net ;
   struct in6_addr skc_v6_daddr ;
   struct in6_addr skc_v6_rcv_saddr ;
   atomic64_t skc_cookie ;
   int skc_dontcopy_begin[0U] ;
   union __anonunion____missing_field_name_352 __annonCompField108 ;
   int skc_tx_queue_mapping ;
   atomic_t skc_refcnt ;
   int skc_dontcopy_end[0U] ;
};
struct cg_proto;
struct __anonstruct_sk_backlog_353 {
   atomic_t rmem_alloc ;
   int len ;
   struct sk_buff *head ;
   struct sk_buff *tail ;
};
struct sock {
   struct sock_common __sk_common ;
   socket_lock_t sk_lock ;
   struct sk_buff_head sk_receive_queue ;
   struct __anonstruct_sk_backlog_353 sk_backlog ;
   int sk_forward_alloc ;
   __u32 sk_rxhash ;
   u16 sk_incoming_cpu ;
   __u32 sk_txhash ;
   unsigned int sk_napi_id ;
   unsigned int sk_ll_usec ;
   atomic_t sk_drops ;
   int sk_rcvbuf ;
   struct sk_filter *sk_filter ;
   struct socket_wq *sk_wq ;
   struct xfrm_policy *sk_policy[2U] ;
   unsigned long sk_flags ;
   struct dst_entry *sk_rx_dst ;
   struct dst_entry *sk_dst_cache ;
   spinlock_t sk_dst_lock ;
   atomic_t sk_wmem_alloc ;
   atomic_t sk_omem_alloc ;
   int sk_sndbuf ;
   struct sk_buff_head sk_write_queue ;
   unsigned char sk_shutdown : 2 ;
   unsigned char sk_no_check_tx : 1 ;
   unsigned char sk_no_check_rx : 1 ;
   unsigned char sk_userlocks : 4 ;
   unsigned char sk_protocol ;
   unsigned short sk_type ;
   int sk_wmem_queued ;
   gfp_t sk_allocation ;
   u32 sk_pacing_rate ;
   u32 sk_max_pacing_rate ;
   netdev_features_t sk_route_caps ;
   netdev_features_t sk_route_nocaps ;
   int sk_gso_type ;
   unsigned int sk_gso_max_size ;
   u16 sk_gso_max_segs ;
   int sk_rcvlowat ;
   unsigned long sk_lingertime ;
   struct sk_buff_head sk_error_queue ;
   struct proto *sk_prot_creator ;
   rwlock_t sk_callback_lock ;
   int sk_err ;
   int sk_err_soft ;
   u32 sk_ack_backlog ;
   u32 sk_max_ack_backlog ;
   __u32 sk_priority ;
   __u32 sk_cgrp_prioidx ;
   struct pid *sk_peer_pid ;
   struct cred const *sk_peer_cred ;
   long sk_rcvtimeo ;
   long sk_sndtimeo ;
   struct timer_list sk_timer ;
   ktime_t sk_stamp ;
   u16 sk_tsflags ;
   u32 sk_tskey ;
   struct socket *sk_socket ;
   void *sk_user_data ;
   struct page_frag sk_frag ;
   struct sk_buff *sk_send_head ;
   __s32 sk_peek_off ;
   int sk_write_pending ;
   void *sk_security ;
   __u32 sk_mark ;
   u32 sk_classid ;
   struct cg_proto *sk_cgrp ;
   void (*sk_state_change)(struct sock * ) ;
   void (*sk_data_ready)(struct sock * ) ;
   void (*sk_write_space)(struct sock * ) ;
   void (*sk_error_report)(struct sock * ) ;
   int (*sk_backlog_rcv)(struct sock * , struct sk_buff * ) ;
   void (*sk_destruct)(struct sock * ) ;
};
struct request_sock_ops;
struct timewait_sock_ops;
struct inet_hashinfo;
struct raw_hashinfo;
struct udp_table;
union __anonunion_h_356 {
   struct inet_hashinfo *hashinfo ;
   struct udp_table *udp_table ;
   struct raw_hashinfo *raw_hash ;
};
struct proto {
   void (*close)(struct sock * , long ) ;
   int (*connect)(struct sock * , struct sockaddr * , int ) ;
   int (*disconnect)(struct sock * , int ) ;
   struct sock *(*accept)(struct sock * , int , int * ) ;
   int (*ioctl)(struct sock * , int , unsigned long ) ;
   int (*init)(struct sock * ) ;
   void (*destroy)(struct sock * ) ;
   void (*shutdown)(struct sock * , int ) ;
   int (*setsockopt)(struct sock * , int , int , char * , unsigned int ) ;
   int (*getsockopt)(struct sock * , int , int , char * , int * ) ;
   int (*compat_setsockopt)(struct sock * , int , int , char * , unsigned int ) ;
   int (*compat_getsockopt)(struct sock * , int , int , char * , int * ) ;
   int (*compat_ioctl)(struct sock * , unsigned int , unsigned long ) ;
   int (*sendmsg)(struct sock * , struct msghdr * , size_t ) ;
   int (*recvmsg)(struct sock * , struct msghdr * , size_t , int , int , int * ) ;
   int (*sendpage)(struct sock * , struct page * , int , size_t , int ) ;
   int (*bind)(struct sock * , struct sockaddr * , int ) ;
   int (*backlog_rcv)(struct sock * , struct sk_buff * ) ;
   void (*release_cb)(struct sock * ) ;
   void (*hash)(struct sock * ) ;
   void (*unhash)(struct sock * ) ;
   void (*rehash)(struct sock * ) ;
   int (*get_port)(struct sock * , unsigned short ) ;
   void (*clear_sk)(struct sock * , int ) ;
   unsigned int inuse_idx ;
   bool (*stream_memory_free)(struct sock const * ) ;
   void (*enter_memory_pressure)(struct sock * ) ;
   atomic_long_t *memory_allocated ;
   struct percpu_counter *sockets_allocated ;
   int *memory_pressure ;
   long *sysctl_mem ;
   int *sysctl_wmem ;
   int *sysctl_rmem ;
   int max_header ;
   bool no_autobind ;
   struct kmem_cache *slab ;
   unsigned int obj_size ;
   int slab_flags ;
   struct percpu_counter *orphan_count ;
   struct request_sock_ops *rsk_prot ;
   struct timewait_sock_ops *twsk_prot ;
   union __anonunion_h_356 h ;
   struct module *owner ;
   char name[32U] ;
   struct list_head node ;
   int (*init_cgroup)(struct mem_cgroup * , struct cgroup_subsys * ) ;
   void (*destroy_cgroup)(struct mem_cgroup * ) ;
   struct cg_proto *(*proto_cgroup)(struct mem_cgroup * ) ;
};
struct cg_proto {
   struct page_counter memory_allocated ;
   struct percpu_counter sockets_allocated ;
   int memory_pressure ;
   long sysctl_mem[3U] ;
   unsigned long flags ;
   struct mem_cgroup *memcg ;
};
struct __anonstruct_bdaddr_t_365 {
   __u8 b[6U] ;
};
typedef struct __anonstruct_bdaddr_t_365 bdaddr_t;
struct l2cap_chan;
struct l2cap_ctrl {
   unsigned char sframe : 1 ;
   unsigned char poll : 1 ;
   unsigned char final : 1 ;
   unsigned char fcs : 1 ;
   unsigned char sar : 2 ;
   unsigned char super : 2 ;
   __u16 reqseq ;
   __u16 txseq ;
   __u8 retries ;
   __le16 psm ;
   bdaddr_t bdaddr ;
   struct l2cap_chan *chan ;
};
struct hci_dev;
struct req_ctrl {
   bool start ;
   u8 event ;
   void (*complete)(struct hci_dev * , u8 , u16 ) ;
   void (*complete_skb)(struct hci_dev * , u8 , u16 , struct sk_buff * ) ;
};
union __anonunion____missing_field_name_366 {
   struct l2cap_ctrl l2cap ;
   struct req_ctrl req ;
};
struct bt_skb_cb {
   __u8 pkt_type ;
   __u8 force_active ;
   __u16 opcode ;
   __u16 expect ;
   unsigned char incoming : 1 ;
   union __anonunion____missing_field_name_366 __annonCompField109 ;
};
struct hci_rp_read_local_version {
   __u8 status ;
   __u8 hci_ver ;
   __le16 hci_rev ;
   __u8 lmp_ver ;
   __le16 manufacturer ;
   __le16 lmp_subver ;
};
struct hci_dev_stats {
   __u32 err_rx ;
   __u32 err_tx ;
   __u32 cmd_tx ;
   __u32 evt_rx ;
   __u32 acl_tx ;
   __u32 acl_rx ;
   __u32 sco_tx ;
   __u32 sco_rx ;
   __u32 byte_rx ;
   __u32 byte_tx ;
};
enum ldv_34255 {
    DISCOVERY_STOPPED = 0,
    DISCOVERY_STARTING = 1,
    DISCOVERY_FINDING = 2,
    DISCOVERY_RESOLVING = 3,
    DISCOVERY_STOPPING = 4
} ;
struct discovery_state {
   int type ;
   enum ldv_34255 state ;
   struct list_head all ;
   struct list_head unknown ;
   struct list_head resolve ;
   __u32 timestamp ;
   bdaddr_t last_adv_addr ;
   u8 last_adv_addr_type ;
   s8 last_adv_rssi ;
   u32 last_adv_flags ;
   u8 last_adv_data[31U] ;
   u8 last_adv_data_len ;
   bool report_invalid_rssi ;
   bool result_filtering ;
   s8 rssi ;
   u16 uuid_count ;
   u8 (*uuids)[16U] ;
   unsigned long scan_start ;
   unsigned long scan_duration ;
};
struct hci_conn_hash {
   struct list_head list ;
   unsigned int acl_num ;
   unsigned int amp_num ;
   unsigned int sco_num ;
   unsigned int le_num ;
   unsigned int le_num_slave ;
};
struct amp_assoc {
   __u16 len ;
   __u16 offset ;
   __u16 rem_len ;
   __u16 len_so_far ;
   __u8 data[672U] ;
};
struct rfkill;
struct hci_dev {
   struct list_head list ;
   struct mutex lock ;
   char name[8U] ;
   unsigned long flags ;
   __u16 id ;
   __u8 bus ;
   __u8 dev_type ;
   bdaddr_t bdaddr ;
   bdaddr_t setup_addr ;
   bdaddr_t public_addr ;
   bdaddr_t random_addr ;
   bdaddr_t static_addr ;
   __u8 adv_addr_type ;
   __u8 dev_name[248U] ;
   __u8 short_name[10U] ;
   __u8 eir[240U] ;
   __u8 dev_class[3U] ;
   __u8 major_class ;
   __u8 minor_class ;
   __u8 max_page ;
   __u8 features[3U][8U] ;
   __u8 le_features[8U] ;
   __u8 le_white_list_size ;
   __u8 le_states[8U] ;
   __u8 commands[64U] ;
   __u8 hci_ver ;
   __u16 hci_rev ;
   __u8 lmp_ver ;
   __u16 manufacturer ;
   __u16 lmp_subver ;
   __u16 voice_setting ;
   __u8 num_iac ;
   __u8 stored_max_keys ;
   __u8 stored_num_keys ;
   __u8 io_capability ;
   __s8 inq_tx_power ;
   __u16 page_scan_interval ;
   __u16 page_scan_window ;
   __u8 page_scan_type ;
   __u8 le_adv_channel_map ;
   __u16 le_adv_min_interval ;
   __u16 le_adv_max_interval ;
   __u8 le_scan_type ;
   __u16 le_scan_interval ;
   __u16 le_scan_window ;
   __u16 le_conn_min_interval ;
   __u16 le_conn_max_interval ;
   __u16 le_conn_latency ;
   __u16 le_supv_timeout ;
   __u16 le_def_tx_len ;
   __u16 le_def_tx_time ;
   __u16 le_max_tx_len ;
   __u16 le_max_tx_time ;
   __u16 le_max_rx_len ;
   __u16 le_max_rx_time ;
   __u16 discov_interleaved_timeout ;
   __u16 conn_info_min_age ;
   __u16 conn_info_max_age ;
   __u8 ssp_debug_mode ;
   __u8 hw_error_code ;
   __u32 clock ;
   __u16 devid_source ;
   __u16 devid_vendor ;
   __u16 devid_product ;
   __u16 devid_version ;
   __u16 pkt_type ;
   __u16 esco_type ;
   __u16 link_policy ;
   __u16 link_mode ;
   __u32 idle_timeout ;
   __u16 sniff_min_interval ;
   __u16 sniff_max_interval ;
   __u8 amp_status ;
   __u32 amp_total_bw ;
   __u32 amp_max_bw ;
   __u32 amp_min_latency ;
   __u32 amp_max_pdu ;
   __u8 amp_type ;
   __u16 amp_pal_cap ;
   __u16 amp_assoc_size ;
   __u32 amp_max_flush_to ;
   __u32 amp_be_flush_to ;
   struct amp_assoc loc_assoc ;
   __u8 flow_ctl_mode ;
   unsigned int auto_accept_delay ;
   unsigned long quirks ;
   atomic_t cmd_cnt ;
   unsigned int acl_cnt ;
   unsigned int sco_cnt ;
   unsigned int le_cnt ;
   unsigned int acl_mtu ;
   unsigned int sco_mtu ;
   unsigned int le_mtu ;
   unsigned int acl_pkts ;
   unsigned int sco_pkts ;
   unsigned int le_pkts ;
   __u16 block_len ;
   __u16 block_mtu ;
   __u16 num_blocks ;
   __u16 block_cnt ;
   unsigned long acl_last_tx ;
   unsigned long sco_last_tx ;
   unsigned long le_last_tx ;
   struct workqueue_struct *workqueue ;
   struct workqueue_struct *req_workqueue ;
   struct work_struct power_on ;
   struct delayed_work power_off ;
   struct work_struct error_reset ;
   __u16 discov_timeout ;
   struct delayed_work discov_off ;
   struct delayed_work service_cache ;
   struct delayed_work cmd_timer ;
   struct work_struct rx_work ;
   struct work_struct cmd_work ;
   struct work_struct tx_work ;
   struct sk_buff_head rx_q ;
   struct sk_buff_head raw_q ;
   struct sk_buff_head cmd_q ;
   struct sk_buff *sent_cmd ;
   struct mutex req_lock ;
   wait_queue_head_t req_wait_q ;
   __u32 req_status ;
   __u32 req_result ;
   struct sk_buff *req_skb ;
   void *smp_data ;
   void *smp_bredr_data ;
   struct discovery_state discovery ;
   struct hci_conn_hash conn_hash ;
   struct list_head mgmt_pending ;
   struct list_head blacklist ;
   struct list_head whitelist ;
   struct list_head uuids ;
   struct list_head link_keys ;
   struct list_head long_term_keys ;
   struct list_head identity_resolving_keys ;
   struct list_head remote_oob_data ;
   struct list_head le_white_list ;
   struct list_head le_conn_params ;
   struct list_head pend_le_conns ;
   struct list_head pend_le_reports ;
   struct hci_dev_stats stat ;
   atomic_t promisc ;
   struct dentry *debugfs ;
   struct device dev ;
   struct rfkill *rfkill ;
   unsigned long dev_flags[1U] ;
   struct delayed_work le_scan_disable ;
   struct delayed_work le_scan_restart ;
   __s8 adv_tx_power ;
   __u8 adv_data[31U] ;
   __u8 adv_data_len ;
   __u8 scan_rsp_data[31U] ;
   __u8 scan_rsp_data_len ;
   struct list_head adv_instances ;
   unsigned int adv_instance_cnt ;
   __u8 cur_adv_instance ;
   __u16 adv_instance_timeout ;
   struct delayed_work adv_instance_expire ;
   __u8 irk[16U] ;
   __u32 rpa_timeout ;
   struct delayed_work rpa_expired ;
   bdaddr_t rpa ;
   int (*open)(struct hci_dev * ) ;
   int (*close)(struct hci_dev * ) ;
   int (*flush)(struct hci_dev * ) ;
   int (*setup)(struct hci_dev * ) ;
   int (*shutdown)(struct hci_dev * ) ;
   int (*send)(struct hci_dev * , struct sk_buff * ) ;
   void (*notify)(struct hci_dev * , unsigned int ) ;
   void (*hw_error)(struct hci_dev * , u8 ) ;
   int (*set_bdaddr)(struct hci_dev * , bdaddr_t const * ) ;
};
struct hci_uart_proto {
   unsigned int id ;
   char const *name ;
   unsigned int init_speed ;
   unsigned int oper_speed ;
   int (*open)(struct hci_uart * ) ;
   int (*close)(struct hci_uart * ) ;
   int (*flush)(struct hci_uart * ) ;
   int (*setup)(struct hci_uart * ) ;
   int (*set_baudrate)(struct hci_uart * , unsigned int ) ;
   int (*recv)(struct hci_uart * , void const * , int ) ;
   int (*enqueue)(struct hci_uart * , struct sk_buff * ) ;
   struct sk_buff *(*dequeue)(struct hci_uart * ) ;
};
struct hci_uart {
   struct tty_struct *tty ;
   struct hci_dev *hdev ;
   unsigned long flags ;
   unsigned long hdev_flags ;
   struct work_struct init_ready ;
   struct work_struct write_work ;
   struct hci_uart_proto const *proto ;
   void *priv ;
   struct sk_buff *tx_skb ;
   unsigned long tx_state ;
   spinlock_t rx_lock ;
   unsigned int init_speed ;
   unsigned int oper_speed ;
};
typedef bool ldv_func_ret_type___2;
typedef bool ldv_func_ret_type___3;
typedef bool ldv_func_ret_type___4;
typedef bool ldv_func_ret_type___5;
typedef bool ldv_func_ret_type___6;
typedef bool ldv_func_ret_type___7;
typedef bool ldv_func_ret_type___8;
typedef bool ldv_func_ret_type___9;
typedef unsigned int uint;
enum hrtimer_restart;
struct h4_recv_pkt {
   u8 type ;
   u8 hlen ;
   u8 loff ;
   u8 lsize ;
   u16 maxlen ;
   int (*recv)(struct hci_dev * , struct sk_buff * ) ;
};
struct h4_struct {
   struct sk_buff *rx_skb ;
   struct sk_buff_head txq ;
};
enum hrtimer_restart;
struct hci_command_hdr {
   __le16 opcode ;
   __u8 plen ;
};
struct hci_event_hdr {
   __u8 evt ;
   __u8 plen ;
};
enum ldv_34931 {
    BCSP_W4_PKT_DELIMITER = 0,
    BCSP_W4_PKT_START = 1,
    BCSP_W4_BCSP_HDR = 2,
    BCSP_W4_DATA = 3,
    BCSP_W4_CRC = 4
} ;
enum ldv_34932 {
    BCSP_ESCSTATE_NOESC = 0,
    BCSP_ESCSTATE_ESC = 1
} ;
struct bcsp_struct {
   struct sk_buff_head unack ;
   struct sk_buff_head rel ;
   struct sk_buff_head unrel ;
   unsigned long rx_count ;
   struct sk_buff *rx_skb ;
   u8 rxseq_txack ;
   u8 rxack ;
   struct timer_list tbcsp ;
   enum ldv_34931 rx_state ;
   enum ldv_34932 rx_esc_state ;
   u8 use_crc ;
   u16 message_crc ;
   u8 txack_req ;
   u8 msgq_txseq ;
};
typedef int ldv_func_ret_type___10;
typedef int ldv_func_ret_type___11;
typedef int ldv_func_ret_type___12;
enum hrtimer_restart;
struct hci_acl_hdr {
   __le16 handle ;
   __le16 dlen ;
};
struct hci_sco_hdr {
   __le16 handle ;
   __u8 dlen ;
};
struct hcill_cmd {
   u8 cmd ;
};
struct ll_struct {
   unsigned long rx_state ;
   unsigned long rx_count ;
   struct sk_buff *rx_skb ;
   struct sk_buff_head txq ;
   spinlock_t hcill_lock ;
   unsigned long hcill_state ;
   struct sk_buff_head tx_wait_q ;
};
enum hrtimer_restart;
struct ath_struct {
   struct hci_uart *hu ;
   unsigned int cur_sleep ;
   struct sk_buff *rx_skb ;
   struct sk_buff_head txq ;
   struct work_struct ctxtsw ;
};
enum hrtimer_restart;
enum ldv_34108 {
    H5_UNINITIALIZED = 0,
    H5_INITIALIZED = 1,
    H5_ACTIVE = 2
} ;
enum ldv_34109 {
    H5_AWAKE = 0,
    H5_SLEEPING = 1,
    H5_WAKING_UP = 2
} ;
struct h5 {
   struct sk_buff_head unack ;
   struct sk_buff_head rel ;
   struct sk_buff_head unrel ;
   unsigned long flags ;
   struct sk_buff *rx_skb ;
   size_t rx_pending ;
   u8 rx_ack ;
   int (*rx_func)(struct hci_uart * , u8 ) ;
   struct timer_list timer ;
   u8 tx_seq ;
   u8 tx_ack ;
   u8 tx_win ;
   enum ldv_34108 state ;
   enum ldv_34109 sleep ;
};
typedef int ldv_func_ret_type___13;
typedef int ldv_func_ret_type___14;
typedef int ldv_func_ret_type___15;
typedef int ldv_func_ret_type___16;
enum hrtimer_restart;
typedef __u32 __le32;
enum hrtimer_restart;
struct firmware {
   size_t size ;
   u8 const *data ;
   struct page **pages ;
   void *priv ;
};
struct bcm_update_uart_baud_rate {
   __le16 zero ;
   __le32 baud_rate ;
};
struct bcm_write_uart_clock_setting {
   __u8 type ;
};
struct bcm_data {
   struct sk_buff *rx_skb ;
   struct sk_buff_head txq ;
};
__inline static long ldv__builtin_expect(long exp , long c ) ;
extern struct module __this_module ;
__inline static void set_bit(long nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; bts %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr): "memory");
  return;
}
}
__inline static void clear_bit(long nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; btr %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr));
  return;
}
}
__inline static int test_and_set_bit(long nr , unsigned long volatile *addr )
{
  char c ;
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; bts %2, %0; setc %1": "+m" (*addr),
                       "=qm" (c): "Ir" (nr): "memory");
  return ((int )((signed char )c) != 0);
}
}
__inline static int test_and_clear_bit(long nr , unsigned long volatile *addr )
{
  char c ;
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; btr %2, %0; setc %1": "+m" (*addr),
                       "=qm" (c): "Ir" (nr): "memory");
  return ((int )((signed char )c) != 0);
}
}
__inline static int constant_test_bit(long nr , unsigned long const volatile *addr )
{
  {
  return ((int )((unsigned long )*(addr + (unsigned long )(nr >> 6)) >> ((int )nr & 63)) & 1);
}
}
extern void __dynamic_pr_debug(struct _ddebug * , char const * , ...) ;
bool ldv_is_err(void const *ptr ) ;
long ldv_ptr_err(void const *ptr ) ;
void ldv_spin_lock(void) ;
void ldv_spin_unlock(void) ;
extern void *malloc(size_t ) ;
extern void *calloc(size_t , size_t ) ;
extern void *memset(void * , int , size_t ) ;
extern int __VERIFIER_nondet_int(void) ;
extern unsigned long __VERIFIER_nondet_ulong(void) ;
extern void *__VERIFIER_nondet_pointer(void) ;
extern void __VERIFIER_assume(int ) ;
void *ldv_malloc(size_t size )
{
  void *p ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp___0 = __VERIFIER_nondet_int();
  if (tmp___0 != 0) {
    return ((void *)0);
  } else {
    tmp = malloc(size);
    p = tmp;
    __VERIFIER_assume((unsigned long )p != (unsigned long )((void *)0));
    return (p);
  }
}
}
void *ldv_zalloc(size_t size )
{
  void *p ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp___0 = __VERIFIER_nondet_int();
  if (tmp___0 != 0) {
    return ((void *)0);
  } else {
    tmp = calloc(1UL, size);
    p = tmp;
    __VERIFIER_assume((unsigned long )p != (unsigned long )((void *)0));
    return (p);
  }
}
}
void *ldv_init_zalloc(size_t size )
{
  void *p ;
  void *tmp ;
  {
  tmp = calloc(1UL, size);
  p = tmp;
  __VERIFIER_assume((unsigned long )p != (unsigned long )((void *)0));
  return (p);
}
}
void *ldv_memset(void *s , int c , size_t n )
{
  void *tmp ;
  {
  tmp = memset(s, c, n);
  return (tmp);
}
}
int ldv_undef_int(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  return (tmp);
}
}
unsigned long ldv_undef_ulong(void)
{
  unsigned long tmp ;
  {
  tmp = __VERIFIER_nondet_ulong();
  return (tmp);
}
}
__inline static void ldv_stop(void)
{
  {
  LDV_STOP: ;
  goto LDV_STOP;
}
}
__inline static long ldv__builtin_expect(long exp , long c )
{
  {
  return (exp);
}
}
__inline static void INIT_LIST_HEAD(struct list_head *list )
{
  {
  list->next = list;
  list->prev = list;
  return;
}
}
extern void *memset(void * , int , size_t ) ;
__inline static long PTR_ERR(void const *ptr ) ;
__inline static bool IS_ERR(void const *ptr ) ;
extern void lockdep_init_map(struct lockdep_map * , char const * , struct lock_class_key * ,
                             int ) ;
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
extern void _raw_spin_lock(raw_spinlock_t * ) ;
extern void _raw_spin_unlock(raw_spinlock_t * ) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return (& lock->__annonCompField18.rlock);
}
}
__inline static void ldv_spin_lock_5(spinlock_t *lock )
{
  {
  _raw_spin_lock(& lock->__annonCompField18.rlock);
  return;
}
}
__inline static void spin_lock(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_9(spinlock_t *lock )
{
  {
  _raw_spin_unlock(& lock->__annonCompField18.rlock);
  return;
}
}
__inline static void spin_unlock(spinlock_t *lock ) ;
extern unsigned long __msecs_to_jiffies(unsigned int const ) ;
__inline static unsigned long msecs_to_jiffies(unsigned int const m )
{
  unsigned long tmp___0 ;
  {
  tmp___0 = __msecs_to_jiffies(m);
  return (tmp___0);
}
}
extern void __init_work(struct work_struct * , int ) ;
extern struct workqueue_struct *system_wq ;
extern bool queue_work_on(int , struct workqueue_struct * , struct work_struct * ) ;
bool ldv_queue_work_on_15(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_17(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
extern bool queue_delayed_work_on(int , struct workqueue_struct * , struct delayed_work * ,
                                  unsigned long ) ;
bool ldv_queue_delayed_work_on_16(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_19(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
extern void flush_workqueue(struct workqueue_struct * ) ;
void ldv_flush_workqueue_18(struct workqueue_struct *ldv_func_arg1 ) ;
extern bool cancel_work_sync(struct work_struct * ) ;
bool ldv_cancel_work_sync_45(struct work_struct *ldv_func_arg1 ) ;
extern bool cancel_delayed_work(struct delayed_work * ) ;
bool ldv_cancel_delayed_work_42(struct delayed_work *ldv_func_arg1 ) ;
bool ldv_cancel_delayed_work_43(struct delayed_work *ldv_func_arg1 ) ;
bool ldv_cancel_delayed_work_44(struct delayed_work *ldv_func_arg1 ) ;
__inline static bool queue_work(struct workqueue_struct *wq , struct work_struct *work )
{
  bool tmp ;
  {
  tmp = ldv_queue_work_on_15(8192, wq, work);
  return (tmp);
}
}
__inline static bool schedule_work(struct work_struct *work )
{
  bool tmp ;
  {
  tmp = queue_work(system_wq, work);
  return (tmp);
}
}
extern void kfree(void const * ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
void ldv_check_alloc_flags(gfp_t flags ) ;
int ldv_timer_state_5 = 0;
int ldv_state_variable_8 ;
struct timer_list *ldv_timer_list_5 ;
struct timer_list *ldv_timer_list_4 ;
struct work_struct *ldv_work_struct_3_1 ;
struct work_struct *ldv_work_struct_1_3 ;
int ldv_state_variable_0 ;
int ldv_state_variable_5 ;
int ldv_work_1_1 ;
struct hci_uart *llp_group0 ;
int ldv_work_3_2 ;
int ldv_work_3_0 ;
struct hci_uart *h5p_group0 ;
struct work_struct *ldv_work_struct_2_3 ;
struct work_struct *ldv_work_struct_2_0 ;
int ldv_state_variable_9 ;
struct work_struct *ldv_work_struct_2_2 ;
int ldv_timer_state_4 = 0;
int ref_cnt ;
int ldv_work_3_3 ;
int ldv_state_variable_1 ;
int ldv_state_variable_7 ;
struct work_struct *ldv_work_struct_3_3 ;
struct work_struct *ldv_work_struct_1_0 ;
struct work_struct *ldv_work_struct_1_1 ;
int ldv_state_variable_10 ;
int ldv_work_1_3 ;
struct work_struct *ldv_work_struct_2_1 ;
struct hci_uart *bcsp_group0 ;
struct work_struct *ldv_work_struct_3_2 ;
int ldv_state_variable_6 ;
struct hci_uart *h4p_group0 ;
int ldv_work_3_1 ;
int ldv_state_variable_2 ;
int ldv_work_2_0 ;
struct work_struct *ldv_work_struct_3_0 ;
int ldv_state_variable_11 ;
int ldv_work_1_2 ;
int LDV_IN_INTERRUPT = 1;
struct hci_uart *bcm_proto_group0 ;
struct work_struct *ldv_work_struct_1_2 ;
int ldv_work_2_2 ;
int ldv_state_variable_3 ;
struct hci_uart *athp_group0 ;
int ldv_work_1_0 ;
int ldv_work_2_3 ;
int ldv_state_variable_4 ;
int ldv_work_2_1 ;
void work_init_3(void) ;
void call_and_disable_work_1(struct work_struct *work ) ;
void work_init_2(void) ;
void ldv_initialize_hci_uart_proto_7(void) ;
void call_and_disable_all_2(int state ) ;
void ldv_initialize_hci_uart_proto_6(void) ;
void call_and_disable_all_1(int state ) ;
void activate_work_2(struct work_struct *work , int state ) ;
void activate_work_3(struct work_struct *work , int state ) ;
void ldv_initialize_hci_uart_proto_10(void) ;
void activate_work_1(struct work_struct *work , int state ) ;
void disable_work_3(struct work_struct *work ) ;
void ldv_initialize_hci_uart_proto_8(void) ;
void disable_work_2(struct work_struct *work ) ;
void ldv_initialize_hci_uart_proto_9(void) ;
void disable_work_1(struct work_struct *work ) ;
void work_init_1(void) ;
void invoke_work_1(void) ;
void call_and_disable_all_3(int state ) ;
void ldv_initialize_hci_uart_proto_11(void) ;
void call_and_disable_work_2(struct work_struct *work ) ;
void invoke_work_2(void) ;
extern void tty_driver_flush_buffer(struct tty_struct * ) ;
extern void tty_unthrottle(struct tty_struct * ) ;
extern void tty_termios_encode_baud_rate(struct ktermios * , speed_t , speed_t ) ;
extern int tty_set_termios(struct tty_struct * , struct ktermios * ) ;
extern void tty_ldisc_flush(struct tty_struct * ) ;
extern int tty_register_ldisc(int , struct tty_ldisc_ops * ) ;
extern int tty_unregister_ldisc(int ) ;
extern int n_tty_ioctl_helper(struct tty_struct * , struct file * , unsigned int ,
                              unsigned long ) ;
__inline static void *dev_get_drvdata(struct device const *dev )
{
  {
  return ((void *)dev->driver_data);
}
}
__inline static void dev_set_drvdata(struct device *dev , void *data )
{
  {
  dev->driver_data = data;
  return;
}
}
extern void kfree_skb(struct sk_buff * ) ;
struct sk_buff *ldv_skb_clone_33(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_41(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_copy_35(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
int ldv_pskb_expand_head_31(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags ) ;
int ldv_pskb_expand_head_39(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags ) ;
int ldv_pskb_expand_head_40(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags ) ;
extern unsigned char *skb_pull(struct sk_buff * , unsigned int ) ;
void *ldv_malloc(size_t size ) ;
struct sk_buff *ldv___netdev_alloc_skb_36(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_37(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_38(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags ) ;
extern void bt_info(char const * , ...) ;
extern void bt_err(char const * , ...) ;
__inline static void *hci_get_drvdata(struct hci_dev *hdev )
{
  void *tmp ;
  {
  tmp = dev_get_drvdata((struct device const *)(& hdev->dev));
  return (tmp);
}
}
__inline static void hci_set_drvdata(struct hci_dev *hdev , void *data )
{
  {
  dev_set_drvdata(& hdev->dev, data);
  return;
}
}
extern struct hci_dev *hci_alloc_dev(void) ;
extern void hci_free_dev(struct hci_dev * ) ;
extern int hci_register_dev(struct hci_dev * ) ;
extern void hci_unregister_dev(struct hci_dev * ) ;
extern struct sk_buff *__hci_cmd_sync(struct hci_dev * , u16 , u32 , void const * ,
                                      u32 ) ;
extern int btintel_check_bdaddr(struct hci_dev * ) ;
extern int btintel_set_bdaddr(struct hci_dev * , bdaddr_t const * ) ;
extern int btbcm_check_bdaddr(struct hci_dev * ) ;
extern int btbcm_set_bdaddr(struct hci_dev * , bdaddr_t const * ) ;
int hci_uart_register_proto(struct hci_uart_proto const *p ) ;
int hci_uart_unregister_proto(struct hci_uart_proto const *p ) ;
int hci_uart_tx_wakeup(struct hci_uart *hu ) ;
int hci_uart_init_ready(struct hci_uart *hu ) ;
void hci_uart_init_tty(struct hci_uart *hu ) ;
void hci_uart_set_baudrate(struct hci_uart *hu , unsigned int speed ) ;
void hci_uart_set_flow_control(struct hci_uart *hu , bool enable ) ;
void hci_uart_set_speeds(struct hci_uart *hu , unsigned int init_speed , unsigned int oper_speed ) ;
int h4_init(void) ;
int h4_deinit(void) ;
int bcsp_init(void) ;
int bcsp_deinit(void) ;
int ll_init(void) ;
int ll_deinit(void) ;
int ath_init(void) ;
int ath_deinit(void) ;
int h5_init(void) ;
int h5_deinit(void) ;
int bcm_init(void) ;
int bcm_deinit(void) ;
static struct hci_uart_proto const *hup[8U] ;
int hci_uart_register_proto(struct hci_uart_proto const *p )
{
  {
  if ((unsigned int )p->id > 7U) {
    return (-22);
  } else {
  }
  if ((unsigned long )hup[p->id] != (unsigned long )((struct hci_uart_proto const *)0)) {
    return (-17);
  } else {
  }
  hup[p->id] = p;
  bt_info("HCI UART protocol %s registered\n", p->name);
  return (0);
}
}
int hci_uart_unregister_proto(struct hci_uart_proto const *p )
{
  {
  if ((unsigned int )p->id > 7U) {
    return (-22);
  } else {
  }
  if ((unsigned long )hup[p->id] == (unsigned long )((struct hci_uart_proto const *)0)) {
    return (-22);
  } else {
  }
  hup[p->id] = (struct hci_uart_proto const *)0;
  return (0);
}
}
static struct hci_uart_proto const *hci_uart_get_proto(unsigned int id )
{
  {
  if (id > 7U) {
    return ((struct hci_uart_proto const *)0);
  } else {
  }
  return (hup[id]);
}
}
__inline static void hci_uart_tx_complete(struct hci_uart *hu , int pkt_type )
{
  struct hci_dev *hdev ;
  {
  hdev = hu->hdev;
  switch (pkt_type) {
  case 1:
  hdev->stat.cmd_tx = hdev->stat.cmd_tx + 1U;
  goto ldv_51409;
  case 2:
  hdev->stat.acl_tx = hdev->stat.acl_tx + 1U;
  goto ldv_51409;
  case 3:
  hdev->stat.sco_tx = hdev->stat.sco_tx + 1U;
  goto ldv_51409;
  }
  ldv_51409: ;
  return;
}
}
__inline static struct sk_buff *hci_uart_dequeue(struct hci_uart *hu )
{
  struct sk_buff *skb ;
  {
  skb = hu->tx_skb;
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    skb = (*((hu->proto)->dequeue))(hu);
  } else {
    hu->tx_skb = (struct sk_buff *)0;
  }
  return (skb);
}
}
int hci_uart_tx_wakeup(struct hci_uart *hu )
{
  int tmp ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  {
  tmp = test_and_set_bit(1L, (unsigned long volatile *)(& hu->tx_state));
  if (tmp != 0) {
    set_bit(2L, (unsigned long volatile *)(& hu->tx_state));
    return (0);
  } else {
  }
  descriptor.modname = "hci_uart";
  descriptor.function = "hci_uart_tx_wakeup";
  descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/4072/dscv_tempdir/dscv/ri/43_2a/drivers/bluetooth/hci_ldisc.c";
  descriptor.format = "\n";
  descriptor.lineno = 131U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    __dynamic_pr_debug(& descriptor, "\n");
  } else {
  }
  schedule_work(& hu->write_work);
  return (0);
}
}
static void hci_uart_write_work(struct work_struct *work )
{
  struct hci_uart *hu ;
  struct work_struct const *__mptr ;
  struct tty_struct *tty ;
  struct hci_dev *hdev ;
  struct sk_buff *skb ;
  int len ;
  int tmp ;
  {
  __mptr = (struct work_struct const *)work;
  hu = (struct hci_uart *)__mptr + 0xffffffffffffff90UL;
  tty = hu->tty;
  hdev = hu->hdev;
  restart:
  clear_bit(2L, (unsigned long volatile *)(& hu->tx_state));
  goto ldv_51434;
  ldv_51433:
  set_bit(5L, (unsigned long volatile *)(& tty->flags));
  len = (*((tty->ops)->write))(tty, (unsigned char const *)skb->data, (int )skb->len);
  hdev->stat.byte_tx = hdev->stat.byte_tx + (__u32 )len;
  skb_pull(skb, (unsigned int )len);
  if (skb->len != 0U) {
    hu->tx_skb = skb;
    goto ldv_51432;
  } else {
  }
  hci_uart_tx_complete(hu, (int )((struct bt_skb_cb *)(& skb->cb))->pkt_type);
  kfree_skb(skb);
  ldv_51434:
  skb = hci_uart_dequeue(hu);
  if ((unsigned long )skb != (unsigned long )((struct sk_buff *)0)) {
    goto ldv_51433;
  } else {
  }
  ldv_51432:
  tmp = constant_test_bit(2L, (unsigned long const volatile *)(& hu->tx_state));
  if (tmp != 0) {
    goto restart;
  } else {
  }
  clear_bit(1L, (unsigned long volatile *)(& hu->tx_state));
  return;
}
}
static void hci_uart_init_work(struct work_struct *work )
{
  struct hci_uart *hu ;
  struct work_struct const *__mptr ;
  int err ;
  int tmp ;
  {
  __mptr = (struct work_struct const *)work;
  hu = (struct hci_uart *)__mptr + 0xffffffffffffffe0UL;
  tmp = test_and_clear_bit(3L, (unsigned long volatile *)(& hu->hdev_flags));
  if (tmp == 0) {
    return;
  } else {
  }
  err = hci_register_dev(hu->hdev);
  if (err < 0) {
    bt_err("Can\'t register HCI device\n");
    hci_free_dev(hu->hdev);
    hu->hdev = (struct hci_dev *)0;
    (*((hu->proto)->close))(hu);
  } else {
  }
  set_bit(1L, (unsigned long volatile *)(& hu->flags));
  return;
}
}
int hci_uart_init_ready(struct hci_uart *hu )
{
  int tmp ;
  {
  tmp = constant_test_bit(3L, (unsigned long const volatile *)(& hu->hdev_flags));
  if (tmp == 0) {
    return (-114);
  } else {
  }
  schedule_work(& hu->init_ready);
  return (0);
}
}
static int hci_uart_open(struct hci_dev *hdev )
{
  struct _ddebug descriptor ;
  long tmp ;
  {
  descriptor.modname = "hci_uart";
  descriptor.function = "hci_uart_open";
  descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/4072/dscv_tempdir/dscv/ri/43_2a/drivers/bluetooth/hci_ldisc.c";
  descriptor.format = "%s %p\n";
  descriptor.lineno = 208U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "%s %p\n", (char *)(& hdev->name), hdev);
  } else {
  }
  set_bit(2L, (unsigned long volatile *)(& hdev->flags));
  return (0);
}
}
static int hci_uart_flush(struct hci_dev *hdev )
{
  struct hci_uart *hu ;
  void *tmp ;
  struct tty_struct *tty ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  int tmp___1 ;
  {
  tmp = hci_get_drvdata(hdev);
  hu = (struct hci_uart *)tmp;
  tty = hu->tty;
  descriptor.modname = "hci_uart";
  descriptor.function = "hci_uart_flush";
  descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/4072/dscv_tempdir/dscv/ri/43_2a/drivers/bluetooth/hci_ldisc.c";
  descriptor.format = "hdev %p tty %p\n";
  descriptor.lineno = 223U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    __dynamic_pr_debug(& descriptor, "hdev %p tty %p\n", hdev, tty);
  } else {
  }
  if ((unsigned long )hu->tx_skb != (unsigned long )((struct sk_buff *)0)) {
    kfree_skb(hu->tx_skb);
    hu->tx_skb = (struct sk_buff *)0;
  } else {
  }
  tty_ldisc_flush(tty);
  tty_driver_flush_buffer(tty);
  tmp___1 = constant_test_bit(0L, (unsigned long const volatile *)(& hu->flags));
  if (tmp___1 != 0) {
    (*((hu->proto)->flush))(hu);
  } else {
  }
  return (0);
}
}
static int hci_uart_close(struct hci_dev *hdev )
{
  struct _ddebug descriptor ;
  long tmp ;
  int tmp___0 ;
  {
  descriptor.modname = "hci_uart";
  descriptor.function = "hci_uart_close";
  descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/4072/dscv_tempdir/dscv/ri/43_2a/drivers/bluetooth/hci_ldisc.c";
  descriptor.format = "hdev %p\n";
  descriptor.lineno = 242U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "hdev %p\n", hdev);
  } else {
  }
  tmp___0 = test_and_clear_bit(2L, (unsigned long volatile *)(& hdev->flags));
  if (tmp___0 == 0) {
    return (0);
  } else {
  }
  hci_uart_flush(hdev);
  hdev->flush = (int (*)(struct hci_dev * ))0;
  return (0);
}
}
static int hci_uart_send_frame(struct hci_dev *hdev , struct sk_buff *skb )
{
  struct hci_uart *hu ;
  void *tmp ;
  int tmp___0 ;
  struct _ddebug descriptor ;
  long tmp___1 ;
  {
  tmp = hci_get_drvdata(hdev);
  hu = (struct hci_uart *)tmp;
  tmp___0 = constant_test_bit(2L, (unsigned long const volatile *)(& hdev->flags));
  if (tmp___0 == 0) {
    return (-16);
  } else {
  }
  descriptor.modname = "hci_uart";
  descriptor.function = "hci_uart_send_frame";
  descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/4072/dscv_tempdir/dscv/ri/43_2a/drivers/bluetooth/hci_ldisc.c";
  descriptor.format = "%s: type %d len %d\n";
  descriptor.lineno = 260U;
  descriptor.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    __dynamic_pr_debug(& descriptor, "%s: type %d len %d\n", (char *)(& hdev->name),
                       (int )((struct bt_skb_cb *)(& skb->cb))->pkt_type, skb->len);
  } else {
  }
  (*((hu->proto)->enqueue))(hu, skb);
  hci_uart_tx_wakeup(hu);
  return (0);
}
}
void hci_uart_set_flow_control(struct hci_uart *hu , bool enable )
{
  struct tty_struct *tty ;
  struct ktermios ktermios ;
  int status ;
  unsigned int set ;
  unsigned int clear ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  struct _ddebug descriptor___1 ;
  long tmp___1 ;
  struct _ddebug descriptor___2 ;
  long tmp___2 ;
  struct _ddebug descriptor___3 ;
  long tmp___3 ;
  struct _ddebug descriptor___4 ;
  long tmp___4 ;
  {
  tty = hu->tty;
  set = 0U;
  clear = 0U;
  if ((int )enable) {
    ktermios = tty->termios;
    ktermios.c_cflag = ktermios.c_cflag & 2147483647U;
    status = tty_set_termios(tty, & ktermios);
    descriptor.modname = "hci_uart";
    descriptor.function = "hci_uart_set_flow_control";
    descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/4072/dscv_tempdir/dscv/ri/43_2a/drivers/bluetooth/hci_ldisc.c";
    descriptor.format = "Disabling hardware flow control: %s\n";
    descriptor.lineno = 284U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_pr_debug(& descriptor, "Disabling hardware flow control: %s\n", status != 0 ? (char *)"failed" : (char *)"success");
    } else {
    }
    status = (*(((tty->driver)->ops)->tiocmget))(tty);
    descriptor___0.modname = "hci_uart";
    descriptor___0.function = "hci_uart_set_flow_control";
    descriptor___0.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/4072/dscv_tempdir/dscv/ri/43_2a/drivers/bluetooth/hci_ldisc.c";
    descriptor___0.format = "Current tiocm 0x%x\n";
    descriptor___0.lineno = 289U;
    descriptor___0.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      __dynamic_pr_debug(& descriptor___0, "Current tiocm 0x%x\n", status);
    } else {
    }
    set = set & 4294950907U;
    clear = ~ set;
    set = set & 57350U;
    clear = clear & 57350U;
    status = (*(((tty->driver)->ops)->tiocmset))(tty, set, clear);
    descriptor___1.modname = "hci_uart";
    descriptor___1.function = "hci_uart_set_flow_control";
    descriptor___1.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/4072/dscv_tempdir/dscv/ri/43_2a/drivers/bluetooth/hci_ldisc.c";
    descriptor___1.format = "Clearing RTS: %s\n";
    descriptor___1.lineno = 298U;
    descriptor___1.flags = 0U;
    tmp___1 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    if (tmp___1 != 0L) {
      __dynamic_pr_debug(& descriptor___1, "Clearing RTS: %s\n", status != 0 ? (char *)"failed" : (char *)"success");
    } else {
    }
  } else {
    status = (*(((tty->driver)->ops)->tiocmget))(tty);
    descriptor___2.modname = "hci_uart";
    descriptor___2.function = "hci_uart_set_flow_control";
    descriptor___2.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/4072/dscv_tempdir/dscv/ri/43_2a/drivers/bluetooth/hci_ldisc.c";
    descriptor___2.format = "Current tiocm 0x%x\n";
    descriptor___2.lineno = 302U;
    descriptor___2.flags = 0U;
    tmp___2 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
    if (tmp___2 != 0L) {
      __dynamic_pr_debug(& descriptor___2, "Current tiocm 0x%x\n", status);
    } else {
    }
    set = set | 16388U;
    clear = ~ set;
    set = set & 57350U;
    clear = clear & 57350U;
    status = (*(((tty->driver)->ops)->tiocmset))(tty, set, clear);
    descriptor___3.modname = "hci_uart";
    descriptor___3.function = "hci_uart_set_flow_control";
    descriptor___3.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/4072/dscv_tempdir/dscv/ri/43_2a/drivers/bluetooth/hci_ldisc.c";
    descriptor___3.format = "Setting RTS: %s\n";
    descriptor___3.lineno = 311U;
    descriptor___3.flags = 0U;
    tmp___3 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
    if (tmp___3 != 0L) {
      __dynamic_pr_debug(& descriptor___3, "Setting RTS: %s\n", status != 0 ? (char *)"failed" : (char *)"success");
    } else {
    }
    ktermios = tty->termios;
    ktermios.c_cflag = ktermios.c_cflag | 2147483648U;
    status = tty_set_termios(tty, & ktermios);
    descriptor___4.modname = "hci_uart";
    descriptor___4.function = "hci_uart_set_flow_control";
    descriptor___4.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/4072/dscv_tempdir/dscv/ri/43_2a/drivers/bluetooth/hci_ldisc.c";
    descriptor___4.format = "Enabling hardware flow control: %s\n";
    descriptor___4.lineno = 318U;
    descriptor___4.flags = 0U;
    tmp___4 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
    if (tmp___4 != 0L) {
      __dynamic_pr_debug(& descriptor___4, "Enabling hardware flow control: %s\n",
                         status != 0 ? (char *)"failed" : (char *)"success");
    } else {
    }
  }
  return;
}
}
void hci_uart_set_speeds(struct hci_uart *hu , unsigned int init_speed , unsigned int oper_speed )
{
  {
  hu->init_speed = init_speed;
  hu->oper_speed = oper_speed;
  return;
}
}
void hci_uart_init_tty(struct hci_uart *hu )
{
  struct tty_struct *tty ;
  struct ktermios ktermios ;
  {
  tty = hu->tty;
  ktermios = tty->termios;
  ktermios.c_iflag = ktermios.c_iflag & 4294965780U;
  ktermios.c_oflag = ktermios.c_oflag & 4294967294U;
  ktermios.c_lflag = ktermios.c_lflag & 4294934452U;
  ktermios.c_cflag = ktermios.c_cflag & 4294966991U;
  ktermios.c_cflag = ktermios.c_cflag | 48U;
  ktermios.c_cflag = ktermios.c_cflag | 2147483648U;
  tty_set_termios(tty, & ktermios);
  return;
}
}
void hci_uart_set_baudrate(struct hci_uart *hu , unsigned int speed )
{
  struct tty_struct *tty ;
  struct ktermios ktermios ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  tty = hu->tty;
  ktermios = tty->termios;
  ktermios.c_cflag = ktermios.c_cflag & 4294963184U;
  tty_termios_encode_baud_rate(& ktermios, speed, speed);
  tty_set_termios(tty, & ktermios);
  descriptor.modname = "hci_uart";
  descriptor.function = "hci_uart_set_baudrate";
  descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/4072/dscv_tempdir/dscv/ri/43_2a/drivers/bluetooth/hci_ldisc.c";
  descriptor.format = "%s: New tty speeds: %d/%d\n";
  descriptor.lineno = 361U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "%s: New tty speeds: %d/%d\n", (char *)(& (hu->hdev)->name),
                       tty->termios.c_ispeed, tty->termios.c_ospeed);
  } else {
  }
  return;
}
}
static int hci_uart_setup(struct hci_dev *hdev )
{
  struct hci_uart *hu ;
  void *tmp ;
  struct hci_rp_read_local_version *ver ;
  struct sk_buff *skb ;
  unsigned int speed ;
  int err ;
  int tmp___0 ;
  int tmp___1 ;
  unsigned long tmp___2 ;
  long tmp___3 ;
  bool tmp___4 ;
  {
  tmp = hci_get_drvdata(hdev);
  hu = (struct hci_uart *)tmp;
  if (hu->init_speed != 0U) {
    speed = hu->init_speed;
  } else
  if ((unsigned int )(hu->proto)->init_speed != 0U) {
    speed = (hu->proto)->init_speed;
  } else {
    speed = 0U;
  }
  if (speed != 0U) {
    hci_uart_set_baudrate(hu, speed);
  } else {
  }
  if (hu->oper_speed != 0U) {
    speed = hu->oper_speed;
  } else
  if ((unsigned int )(hu->proto)->oper_speed != 0U) {
    speed = (hu->proto)->oper_speed;
  } else {
    speed = 0U;
  }
  if ((unsigned long )(hu->proto)->set_baudrate != (unsigned long )((int (* )(struct hci_uart * ,
                                                                                         unsigned int ))0) && speed != 0U) {
    err = (*((hu->proto)->set_baudrate))(hu, speed);
    if (err == 0) {
      hci_uart_set_baudrate(hu, speed);
    } else {
    }
  } else {
  }
  if ((unsigned long )(hu->proto)->setup != (unsigned long )((int (* )(struct hci_uart * ))0)) {
    tmp___0 = (*((hu->proto)->setup))(hu);
    return (tmp___0);
  } else {
  }
  tmp___1 = constant_test_bit(5L, (unsigned long const volatile *)(& hu->hdev_flags));
  if (tmp___1 == 0) {
    return (0);
  } else {
  }
  tmp___2 = msecs_to_jiffies(10000U);
  skb = __hci_cmd_sync(hdev, 4097, 0U, (void const *)0, (u32 )tmp___2);
  tmp___4 = IS_ERR((void const *)skb);
  if ((int )tmp___4) {
    tmp___3 = PTR_ERR((void const *)skb);
    bt_err("%s: Reading local version information failed (%ld)\n", (char *)(& hdev->name),
           tmp___3);
    return (0);
  } else {
  }
  if (skb->len != 9U) {
    bt_err("%s: Event length mismatch for version information\n", (char *)(& hdev->name));
    goto done;
  } else {
  }
  ver = (struct hci_rp_read_local_version *)skb->data;
  switch ((int )ver->manufacturer) {
  case 2:
  hdev->set_bdaddr = & btintel_set_bdaddr;
  btintel_check_bdaddr(hdev);
  goto ldv_51513;
  case 15:
  hdev->set_bdaddr = & btbcm_set_bdaddr;
  btbcm_check_bdaddr(hdev);
  goto ldv_51513;
  }
  ldv_51513: ;
  done:
  kfree_skb(skb);
  return (0);
}
}
static int hci_uart_tty_open(struct tty_struct *tty )
{
  struct hci_uart *hu ;
  struct _ddebug descriptor ;
  long tmp ;
  void *tmp___0 ;
  struct lock_class_key __key ;
  atomic_long_t __constr_expr_0 ;
  struct lock_class_key __key___0 ;
  atomic_long_t __constr_expr_1 ;
  struct lock_class_key __key___1 ;
  {
  descriptor.modname = "hci_uart";
  descriptor.function = "hci_uart_tty_open";
  descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/4072/dscv_tempdir/dscv/ri/43_2a/drivers/bluetooth/hci_ldisc.c";
  descriptor.format = "tty %p\n";
  descriptor.lineno = 453U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "tty %p\n", tty);
  } else {
  }
  if ((unsigned long )(tty->ops)->write == (unsigned long )((int (* )(struct tty_struct * ,
                                                                                 unsigned char const * ,
                                                                                 int ))0)) {
    return (-95);
  } else {
  }
  tmp___0 = kzalloc(304UL, 208U);
  hu = (struct hci_uart *)tmp___0;
  if ((unsigned long )hu == (unsigned long )((struct hci_uart *)0)) {
    bt_err("Can\'t allocate control structure\n");
    return (-23);
  } else {
  }
  tty->disc_data = (void *)hu;
  hu->tty = tty;
  tty->receive_room = 65536U;
  __init_work(& hu->init_ready, 0);
  __constr_expr_0.counter = 137438953408L;
  hu->init_ready.data = __constr_expr_0;
  lockdep_init_map(& hu->init_ready.lockdep_map, "(&hu->init_ready)", & __key, 0);
  INIT_LIST_HEAD(& hu->init_ready.entry);
  hu->init_ready.func = & hci_uart_init_work;
  __init_work(& hu->write_work, 0);
  __constr_expr_1.counter = 137438953408L;
  hu->write_work.data = __constr_expr_1;
  lockdep_init_map(& hu->write_work.lockdep_map, "(&hu->write_work)", & __key___0,
                   0);
  INIT_LIST_HEAD(& hu->write_work.entry);
  hu->write_work.func = & hci_uart_write_work;
  spinlock_check(& hu->rx_lock);
  __raw_spin_lock_init(& hu->rx_lock.__annonCompField18.rlock, "&(&hu->rx_lock)->rlock",
                       & __key___1);
  if ((unsigned long )((tty->ldisc)->ops)->flush_buffer != (unsigned long )((void (*)(struct tty_struct * ))0)) {
    (*(((tty->ldisc)->ops)->flush_buffer))(tty);
  } else {
  }
  tty_driver_flush_buffer(tty);
  return (0);
}
}
static void hci_uart_tty_close(struct tty_struct *tty )
{
  struct hci_uart *hu ;
  struct hci_dev *hdev ;
  struct _ddebug descriptor ;
  long tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  hu = (struct hci_uart *)tty->disc_data;
  descriptor.modname = "hci_uart";
  descriptor.function = "hci_uart_tty_close";
  descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/4072/dscv_tempdir/dscv/ri/43_2a/drivers/bluetooth/hci_ldisc.c";
  descriptor.format = "tty %p\n";
  descriptor.lineno = 497U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "tty %p\n", tty);
  } else {
  }
  tty->disc_data = (void *)0;
  if ((unsigned long )hu == (unsigned long )((struct hci_uart *)0)) {
    return;
  } else {
  }
  hdev = hu->hdev;
  if ((unsigned long )hdev != (unsigned long )((struct hci_dev *)0)) {
    hci_uart_close(hdev);
  } else {
  }
  ldv_cancel_work_sync_45(& hu->write_work);
  tmp___1 = test_and_clear_bit(0L, (unsigned long volatile *)(& hu->flags));
  if (tmp___1 != 0) {
    if ((unsigned long )hdev != (unsigned long )((struct hci_dev *)0)) {
      tmp___0 = constant_test_bit(1L, (unsigned long const volatile *)(& hu->flags));
      if (tmp___0 != 0) {
        hci_unregister_dev(hdev);
      } else {
      }
      hci_free_dev(hdev);
    } else {
    }
    (*((hu->proto)->close))(hu);
  } else {
  }
  kfree((void const *)hu);
  return;
}
}
static void hci_uart_tty_wakeup(struct tty_struct *tty )
{
  struct hci_uart *hu ;
  struct _ddebug descriptor ;
  long tmp ;
  int tmp___0 ;
  {
  hu = (struct hci_uart *)tty->disc_data;
  descriptor.modname = "hci_uart";
  descriptor.function = "hci_uart_tty_wakeup";
  descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/4072/dscv_tempdir/dscv/ri/43_2a/drivers/bluetooth/hci_ldisc.c";
  descriptor.format = "\n";
  descriptor.lineno = 535U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "\n");
  } else {
  }
  if ((unsigned long )hu == (unsigned long )((struct hci_uart *)0)) {
    return;
  } else {
  }
  clear_bit(5L, (unsigned long volatile *)(& tty->flags));
  if ((unsigned long )hu->tty != (unsigned long )tty) {
    return;
  } else {
  }
  tmp___0 = constant_test_bit(0L, (unsigned long const volatile *)(& hu->flags));
  if (tmp___0 != 0) {
    hci_uart_tx_wakeup(hu);
  } else {
  }
  return;
}
}
static void hci_uart_tty_receive(struct tty_struct *tty , u8 const *data , char *flags ,
                                 int count )
{
  struct hci_uart *hu ;
  int tmp ;
  {
  hu = (struct hci_uart *)tty->disc_data;
  if ((unsigned long )hu == (unsigned long )((struct hci_uart *)0) || (unsigned long )hu->tty != (unsigned long )tty) {
    return;
  } else {
  }
  tmp = constant_test_bit(0L, (unsigned long const volatile *)(& hu->flags));
  if (tmp == 0) {
    return;
  } else {
  }
  spin_lock(& hu->rx_lock);
  (*((hu->proto)->recv))(hu, (void const *)data, count);
  if ((unsigned long )hu->hdev != (unsigned long )((struct hci_dev *)0)) {
    (hu->hdev)->stat.byte_rx = (hu->hdev)->stat.byte_rx + (__u32 )count;
  } else {
  }
  spin_unlock(& hu->rx_lock);
  tty_unthrottle(tty);
  return;
}
}
static int hci_uart_register_dev(struct hci_uart *hu )
{
  struct hci_dev *hdev ;
  struct _ddebug descriptor ;
  long tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  {
  descriptor.modname = "hci_uart";
  descriptor.function = "hci_uart_register_dev";
  descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/4072/dscv_tempdir/dscv/ri/43_2a/drivers/bluetooth/hci_ldisc.c";
  descriptor.format = "\n";
  descriptor.lineno = 587U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "\n");
  } else {
  }
  hdev = hci_alloc_dev();
  if ((unsigned long )hdev == (unsigned long )((struct hci_dev *)0)) {
    bt_err("Can\'t allocate HCI device\n");
    return (-12);
  } else {
  }
  hu->hdev = hdev;
  hdev->bus = 3U;
  hci_set_drvdata(hdev, (void *)hu);
  hdev->open = & hci_uart_open;
  hdev->close = & hci_uart_close;
  hdev->flush = & hci_uart_flush;
  hdev->send = & hci_uart_send_frame;
  hdev->setup = & hci_uart_setup;
  hdev->dev.parent = (hu->tty)->dev;
  tmp___0 = constant_test_bit(0L, (unsigned long const volatile *)(& hu->hdev_flags));
  if (tmp___0 != 0) {
    set_bit(1L, (unsigned long volatile *)(& hdev->quirks));
  } else {
  }
  tmp___1 = constant_test_bit(4L, (unsigned long const volatile *)(& hu->hdev_flags));
  if (tmp___1 != 0) {
    set_bit(6L, (unsigned long volatile *)(& hdev->quirks));
  } else {
  }
  tmp___2 = constant_test_bit(1L, (unsigned long const volatile *)(& hu->hdev_flags));
  if (tmp___2 == 0) {
    set_bit(0L, (unsigned long volatile *)(& hdev->quirks));
  } else {
  }
  tmp___3 = constant_test_bit(2L, (unsigned long const volatile *)(& hu->hdev_flags));
  if (tmp___3 != 0) {
    hdev->dev_type = 1U;
  } else {
    hdev->dev_type = 0U;
  }
  tmp___4 = constant_test_bit(3L, (unsigned long const volatile *)(& hu->hdev_flags));
  if (tmp___4 != 0) {
    return (0);
  } else {
  }
  tmp___5 = hci_register_dev(hdev);
  if (tmp___5 < 0) {
    bt_err("Can\'t register HCI device\n");
    hci_free_dev(hdev);
    return (-19);
  } else {
  }
  set_bit(1L, (unsigned long volatile *)(& hu->flags));
  return (0);
}
}
static int hci_uart_set_proto(struct hci_uart *hu , int id )
{
  struct hci_uart_proto const *p ;
  int err ;
  {
  p = hci_uart_get_proto((unsigned int )id);
  if ((unsigned long )p == (unsigned long )((struct hci_uart_proto const *)0)) {
    return (-93);
  } else {
  }
  err = (*(p->open))(hu);
  if (err != 0) {
    return (err);
  } else {
  }
  hu->proto = p;
  err = hci_uart_register_dev(hu);
  if (err != 0) {
    (*(p->close))(hu);
    return (err);
  } else {
  }
  return (0);
}
}
static int hci_uart_set_flags(struct hci_uart *hu , unsigned long flags )
{
  unsigned long valid_flags ;
  {
  valid_flags = 63UL;
  if ((~ valid_flags & flags) != 0UL) {
    return (-22);
  } else {
  }
  hu->hdev_flags = flags;
  return (0);
}
}
static int hci_uart_tty_ioctl(struct tty_struct *tty , struct file *file , unsigned int cmd ,
                              unsigned long arg )
{
  struct hci_uart *hu ;
  int err ;
  struct _ddebug descriptor ;
  long tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  hu = (struct hci_uart *)tty->disc_data;
  err = 0;
  descriptor.modname = "hci_uart";
  descriptor.function = "hci_uart_tty_ioctl";
  descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/4072/dscv_tempdir/dscv/ri/43_2a/drivers/bluetooth/hci_ldisc.c";
  descriptor.format = "\n";
  descriptor.lineno = 696U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "\n");
  } else {
  }
  if ((unsigned long )hu == (unsigned long )((struct hci_uart *)0)) {
    return (-9);
  } else {
  }
  switch (cmd) {
  case 1074025928U:
  tmp___0 = test_and_set_bit(0L, (unsigned long volatile *)(& hu->flags));
  if (tmp___0 == 0) {
    err = hci_uart_set_proto(hu, (int )arg);
    if (err != 0) {
      clear_bit(0L, (unsigned long volatile *)(& hu->flags));
      return (err);
    } else {
    }
  } else {
    return (-16);
  }
  goto ldv_51574;
  case 2147767753U:
  tmp___1 = constant_test_bit(0L, (unsigned long const volatile *)(& hu->flags));
  if (tmp___1 != 0) {
    return ((int )(hu->proto)->id);
  } else {
  }
  return (-49);
  case 2147767754U:
  tmp___2 = constant_test_bit(1L, (unsigned long const volatile *)(& hu->flags));
  if (tmp___2 != 0) {
    return ((int )(hu->hdev)->id);
  } else {
  }
  return (-49);
  case 1074025931U:
  tmp___3 = constant_test_bit(0L, (unsigned long const volatile *)(& hu->flags));
  if (tmp___3 != 0) {
    return (-16);
  } else {
  }
  err = hci_uart_set_flags(hu, arg);
  if (err != 0) {
    return (err);
  } else {
  }
  goto ldv_51574;
  case 2147767756U: ;
  return ((int )hu->hdev_flags);
  default:
  err = n_tty_ioctl_helper(tty, file, cmd, arg);
  goto ldv_51574;
  }
  ldv_51574: ;
  return (err);
}
}
static ssize_t hci_uart_tty_read(struct tty_struct *tty , struct file *file , unsigned char *buf ,
                                 size_t nr )
{
  {
  return (0L);
}
}
static ssize_t hci_uart_tty_write(struct tty_struct *tty , struct file *file , unsigned char const *data ,
                                  size_t count )
{
  {
  return (0L);
}
}
static unsigned int hci_uart_tty_poll(struct tty_struct *tty , struct file *filp ,
                                      poll_table *wait )
{
  {
  return (0U);
}
}
static int hci_uart_init(void)
{
  struct tty_ldisc_ops hci_uart_ldisc ;
  int err ;
  {
  bt_info("HCI UART driver ver %s\n", (char *)"2.3");
  memset((void *)(& hci_uart_ldisc), 0, 168UL);
  hci_uart_ldisc.magic = 21507;
  hci_uart_ldisc.name = (char *)"n_hci";
  hci_uart_ldisc.open = & hci_uart_tty_open;
  hci_uart_ldisc.close = & hci_uart_tty_close;
  hci_uart_ldisc.read = & hci_uart_tty_read;
  hci_uart_ldisc.write = & hci_uart_tty_write;
  hci_uart_ldisc.ioctl = & hci_uart_tty_ioctl;
  hci_uart_ldisc.poll = & hci_uart_tty_poll;
  hci_uart_ldisc.receive_buf = & hci_uart_tty_receive;
  hci_uart_ldisc.write_wakeup = & hci_uart_tty_wakeup;
  hci_uart_ldisc.owner = & __this_module;
  err = tty_register_ldisc(15, & hci_uart_ldisc);
  if (err != 0) {
    bt_err("HCI line discipline registration failed. (%d)\n", err);
    return (err);
  } else {
  }
  h4_init();
  bcsp_init();
  ll_init();
  ath_init();
  h5_init();
  bcm_init();
  return (0);
}
}
static void hci_uart_exit(void)
{
  int err ;
  {
  h4_deinit();
  bcsp_deinit();
  ll_deinit();
  ath_deinit();
  h5_deinit();
  bcm_deinit();
  err = tty_unregister_ldisc(15);
  if (err != 0) {
    bt_err("Can\'t unregister HCI line discipline (%d)\n", err);
  } else {
  }
  return;
}
}
int ldv_retval_12 ;
extern void ldv_initialize(void) ;
extern void ldv_check_final_state(void) ;
void call_and_disable_work_1(struct work_struct *work )
{
  {
  if ((ldv_work_1_0 == 2 || ldv_work_1_0 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_1_0) {
    hci_uart_init_work(work);
    ldv_work_1_0 = 1;
    return;
  } else {
  }
  if ((ldv_work_1_1 == 2 || ldv_work_1_1 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_1_1) {
    hci_uart_init_work(work);
    ldv_work_1_1 = 1;
    return;
  } else {
  }
  if ((ldv_work_1_2 == 2 || ldv_work_1_2 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_1_2) {
    hci_uart_init_work(work);
    ldv_work_1_2 = 1;
    return;
  } else {
  }
  if ((ldv_work_1_3 == 2 || ldv_work_1_3 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_1_3) {
    hci_uart_init_work(work);
    ldv_work_1_3 = 1;
    return;
  } else {
  }
  return;
}
}
void work_init_2(void)
{
  {
  ldv_work_2_0 = 0;
  ldv_work_2_1 = 0;
  ldv_work_2_2 = 0;
  ldv_work_2_3 = 0;
  return;
}
}
void call_and_disable_all_2(int state )
{
  {
  if (ldv_work_2_0 == state) {
    call_and_disable_work_2(ldv_work_struct_2_0);
  } else {
  }
  if (ldv_work_2_1 == state) {
    call_and_disable_work_2(ldv_work_struct_2_1);
  } else {
  }
  if (ldv_work_2_2 == state) {
    call_and_disable_work_2(ldv_work_struct_2_2);
  } else {
  }
  if (ldv_work_2_3 == state) {
    call_and_disable_work_2(ldv_work_struct_2_3);
  } else {
  }
  return;
}
}
void call_and_disable_all_1(int state )
{
  {
  if (ldv_work_1_0 == state) {
    call_and_disable_work_1(ldv_work_struct_1_0);
  } else {
  }
  if (ldv_work_1_1 == state) {
    call_and_disable_work_1(ldv_work_struct_1_1);
  } else {
  }
  if (ldv_work_1_2 == state) {
    call_and_disable_work_1(ldv_work_struct_1_2);
  } else {
  }
  if (ldv_work_1_3 == state) {
    call_and_disable_work_1(ldv_work_struct_1_3);
  } else {
  }
  return;
}
}
void activate_work_2(struct work_struct *work , int state )
{
  {
  if (ldv_work_2_0 == 0) {
    ldv_work_struct_2_0 = work;
    ldv_work_2_0 = state;
    return;
  } else {
  }
  if (ldv_work_2_1 == 0) {
    ldv_work_struct_2_1 = work;
    ldv_work_2_1 = state;
    return;
  } else {
  }
  if (ldv_work_2_2 == 0) {
    ldv_work_struct_2_2 = work;
    ldv_work_2_2 = state;
    return;
  } else {
  }
  if (ldv_work_2_3 == 0) {
    ldv_work_struct_2_3 = work;
    ldv_work_2_3 = state;
    return;
  } else {
  }
  return;
}
}
void activate_work_1(struct work_struct *work , int state )
{
  {
  if (ldv_work_1_0 == 0) {
    ldv_work_struct_1_0 = work;
    ldv_work_1_0 = state;
    return;
  } else {
  }
  if (ldv_work_1_1 == 0) {
    ldv_work_struct_1_1 = work;
    ldv_work_1_1 = state;
    return;
  } else {
  }
  if (ldv_work_1_2 == 0) {
    ldv_work_struct_1_2 = work;
    ldv_work_1_2 = state;
    return;
  } else {
  }
  if (ldv_work_1_3 == 0) {
    ldv_work_struct_1_3 = work;
    ldv_work_1_3 = state;
    return;
  } else {
  }
  return;
}
}
void disable_work_2(struct work_struct *work )
{
  {
  if ((ldv_work_2_0 == 3 || ldv_work_2_0 == 2) && (unsigned long )ldv_work_struct_2_0 == (unsigned long )work) {
    ldv_work_2_0 = 1;
  } else {
  }
  if ((ldv_work_2_1 == 3 || ldv_work_2_1 == 2) && (unsigned long )ldv_work_struct_2_1 == (unsigned long )work) {
    ldv_work_2_1 = 1;
  } else {
  }
  if ((ldv_work_2_2 == 3 || ldv_work_2_2 == 2) && (unsigned long )ldv_work_struct_2_2 == (unsigned long )work) {
    ldv_work_2_2 = 1;
  } else {
  }
  if ((ldv_work_2_3 == 3 || ldv_work_2_3 == 2) && (unsigned long )ldv_work_struct_2_3 == (unsigned long )work) {
    ldv_work_2_3 = 1;
  } else {
  }
  return;
}
}
void disable_work_1(struct work_struct *work )
{
  {
  if ((ldv_work_1_0 == 3 || ldv_work_1_0 == 2) && (unsigned long )ldv_work_struct_1_0 == (unsigned long )work) {
    ldv_work_1_0 = 1;
  } else {
  }
  if ((ldv_work_1_1 == 3 || ldv_work_1_1 == 2) && (unsigned long )ldv_work_struct_1_1 == (unsigned long )work) {
    ldv_work_1_1 = 1;
  } else {
  }
  if ((ldv_work_1_2 == 3 || ldv_work_1_2 == 2) && (unsigned long )ldv_work_struct_1_2 == (unsigned long )work) {
    ldv_work_1_2 = 1;
  } else {
  }
  if ((ldv_work_1_3 == 3 || ldv_work_1_3 == 2) && (unsigned long )ldv_work_struct_1_3 == (unsigned long )work) {
    ldv_work_1_3 = 1;
  } else {
  }
  return;
}
}
void work_init_1(void)
{
  {
  ldv_work_1_0 = 0;
  ldv_work_1_1 = 0;
  ldv_work_1_2 = 0;
  ldv_work_1_3 = 0;
  return;
}
}
void invoke_work_1(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_work_1_0 == 2 || ldv_work_1_0 == 3) {
    ldv_work_1_0 = 4;
    hci_uart_init_work(ldv_work_struct_1_0);
    ldv_work_1_0 = 1;
  } else {
  }
  goto ldv_51663;
  case 1: ;
  if (ldv_work_1_1 == 2 || ldv_work_1_1 == 3) {
    ldv_work_1_1 = 4;
    hci_uart_init_work(ldv_work_struct_1_0);
    ldv_work_1_1 = 1;
  } else {
  }
  goto ldv_51663;
  case 2: ;
  if (ldv_work_1_2 == 2 || ldv_work_1_2 == 3) {
    ldv_work_1_2 = 4;
    hci_uart_init_work(ldv_work_struct_1_0);
    ldv_work_1_2 = 1;
  } else {
  }
  goto ldv_51663;
  case 3: ;
  if (ldv_work_1_3 == 2 || ldv_work_1_3 == 3) {
    ldv_work_1_3 = 4;
    hci_uart_init_work(ldv_work_struct_1_0);
    ldv_work_1_3 = 1;
  } else {
  }
  goto ldv_51663;
  default:
  ldv_stop();
  }
  ldv_51663: ;
  return;
}
}
void call_and_disable_work_2(struct work_struct *work )
{
  {
  if ((ldv_work_2_0 == 2 || ldv_work_2_0 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_2_0) {
    hci_uart_write_work(work);
    ldv_work_2_0 = 1;
    return;
  } else {
  }
  if ((ldv_work_2_1 == 2 || ldv_work_2_1 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_2_1) {
    hci_uart_write_work(work);
    ldv_work_2_1 = 1;
    return;
  } else {
  }
  if ((ldv_work_2_2 == 2 || ldv_work_2_2 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_2_2) {
    hci_uart_write_work(work);
    ldv_work_2_2 = 1;
    return;
  } else {
  }
  if ((ldv_work_2_3 == 2 || ldv_work_2_3 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_2_3) {
    hci_uart_write_work(work);
    ldv_work_2_3 = 1;
    return;
  } else {
  }
  return;
}
}
void invoke_work_2(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_work_2_0 == 2 || ldv_work_2_0 == 3) {
    ldv_work_2_0 = 4;
    hci_uart_write_work(ldv_work_struct_2_0);
    ldv_work_2_0 = 1;
  } else {
  }
  goto ldv_51681;
  case 1: ;
  if (ldv_work_2_1 == 2 || ldv_work_2_1 == 3) {
    ldv_work_2_1 = 4;
    hci_uart_write_work(ldv_work_struct_2_0);
    ldv_work_2_1 = 1;
  } else {
  }
  goto ldv_51681;
  case 2: ;
  if (ldv_work_2_2 == 2 || ldv_work_2_2 == 3) {
    ldv_work_2_2 = 4;
    hci_uart_write_work(ldv_work_struct_2_0);
    ldv_work_2_2 = 1;
  } else {
  }
  goto ldv_51681;
  case 3: ;
  if (ldv_work_2_3 == 2 || ldv_work_2_3 == 3) {
    ldv_work_2_3 = 4;
    hci_uart_write_work(ldv_work_struct_2_0);
    ldv_work_2_3 = 1;
  } else {
  }
  goto ldv_51681;
  default:
  ldv_stop();
  }
  ldv_51681: ;
  return;
}
}
void ldv_main_exported_11(void) ;
void ldv_main_exported_8(void) ;
void ldv_main_exported_9(void) ;
void ldv_main_exported_10(void) ;
void ldv_main_exported_7(void) ;
void ldv_main_exported_6(void) ;
int main(void)
{
  int tmp ;
  int tmp___0 ;
  {
  ldv_initialize();
  ldv_state_variable_6 = 0;
  ldv_state_variable_11 = 0;
  work_init_3();
  ldv_state_variable_3 = 1;
  ldv_state_variable_7 = 0;
  ldv_state_variable_9 = 0;
  work_init_2();
  ldv_state_variable_2 = 1;
  ldv_state_variable_8 = 0;
  work_init_1();
  ldv_state_variable_1 = 1;
  ldv_state_variable_4 = 1;
  ref_cnt = 0;
  ldv_state_variable_0 = 1;
  ldv_state_variable_10 = 0;
  ldv_state_variable_5 = 1;
  ldv_51722:
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_state_variable_6 != 0) {
    ldv_main_exported_6();
  } else {
  }
  goto ldv_51704;
  case 1: ;
  if (ldv_state_variable_11 != 0) {
    ldv_main_exported_11();
  } else {
  }
  goto ldv_51704;
  case 2: ;
  goto ldv_51704;
  case 3: ;
  if (ldv_state_variable_7 != 0) {
    ldv_main_exported_7();
  } else {
  }
  goto ldv_51704;
  case 4: ;
  if (ldv_state_variable_9 != 0) {
    ldv_main_exported_9();
  } else {
  }
  goto ldv_51704;
  case 5: ;
  if (ldv_state_variable_2 != 0) {
    invoke_work_2();
  } else {
  }
  goto ldv_51704;
  case 6: ;
  if (ldv_state_variable_8 != 0) {
    ldv_main_exported_8();
  } else {
  }
  goto ldv_51704;
  case 7: ;
  if (ldv_state_variable_1 != 0) {
    invoke_work_1();
  } else {
  }
  goto ldv_51704;
  case 8: ;
  goto ldv_51704;
  case 9: ;
  if (ldv_state_variable_0 != 0) {
    tmp___0 = __VERIFIER_nondet_int();
    switch (tmp___0) {
    case 0: ;
    if (ldv_state_variable_0 == 2 && ref_cnt == 0) {
      hci_uart_exit();
      ldv_state_variable_0 = 3;
      goto ldv_final;
    } else {
    }
    goto ldv_51716;
    case 1: ;
    if (ldv_state_variable_0 == 1) {
      ldv_retval_12 = hci_uart_init();
      if (ldv_retval_12 != 0) {
        ldv_state_variable_0 = 3;
        goto ldv_final;
      } else {
      }
      if (ldv_retval_12 == 0) {
        ldv_state_variable_0 = 2;
        ldv_state_variable_9 = 1;
        ldv_initialize_hci_uart_proto_9();
        ldv_state_variable_10 = 1;
        ldv_initialize_hci_uart_proto_10();
        ldv_state_variable_7 = 1;
        ldv_initialize_hci_uart_proto_7();
        ldv_state_variable_11 = 1;
        ldv_initialize_hci_uart_proto_11();
        ldv_state_variable_6 = 1;
        ldv_initialize_hci_uart_proto_6();
        ldv_state_variable_8 = 1;
        ldv_initialize_hci_uart_proto_8();
      } else {
      }
    } else {
    }
    goto ldv_51716;
    default:
    ldv_stop();
    }
    ldv_51716: ;
  } else {
  }
  goto ldv_51704;
  case 10: ;
  if (ldv_state_variable_10 != 0) {
    ldv_main_exported_10();
  } else {
  }
  goto ldv_51704;
  case 11: ;
  goto ldv_51704;
  default:
  ldv_stop();
  }
  ldv_51704: ;
  goto ldv_51722;
  ldv_final:
  ldv_check_final_state();
  return 0;
}
}
__inline static long PTR_ERR(void const *ptr )
{
  long tmp ;
  {
  tmp = ldv_ptr_err(ptr);
  return (tmp);
}
}
__inline static bool IS_ERR(void const *ptr )
{
  bool tmp ;
  {
  tmp = ldv_is_err(ptr);
  return (tmp);
}
}
__inline static void spin_lock(spinlock_t *lock )
{
  {
  ldv_spin_lock();
  ldv_spin_lock_5(lock);
  return;
}
}
__inline static void spin_unlock(spinlock_t *lock )
{
  {
  ldv_spin_unlock();
  ldv_spin_unlock_9(lock);
  return;
}
}
bool ldv_queue_work_on_15(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_3(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_16(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___3 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_3(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_17(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_3(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_18(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_3(2);
  return;
}
}
bool ldv_queue_delayed_work_on_19(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___5 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_3(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
void *ldv_zalloc(size_t size ) ;
__inline static void *kzalloc(size_t size , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_zalloc(size);
  return (tmp);
}
}
int ldv_pskb_expand_head_31(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  return __VERIFIER_nondet_int();
}
}
void *ldv_malloc(size_t size ) ;
struct sk_buff *ldv_skb_clone_33(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv_skb_copy_35(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_36(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_37(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_38(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
int ldv_pskb_expand_head_39(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  return __VERIFIER_nondet_int();
}
}
int ldv_pskb_expand_head_40(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  return __VERIFIER_nondet_int();
}
}
struct sk_buff *ldv_skb_clone_41(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
bool ldv_cancel_delayed_work_42(struct delayed_work *ldv_func_arg1 )
{
  ldv_func_ret_type___6 ldv_func_res ;
  bool tmp ;
  {
  tmp = cancel_delayed_work(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_work_3(& ldv_func_arg1->work);
  return (ldv_func_res);
}
}
bool ldv_cancel_delayed_work_43(struct delayed_work *ldv_func_arg1 )
{
  ldv_func_ret_type___7 ldv_func_res ;
  bool tmp ;
  {
  tmp = cancel_delayed_work(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_work_3(& ldv_func_arg1->work);
  return (ldv_func_res);
}
}
bool ldv_cancel_delayed_work_44(struct delayed_work *ldv_func_arg1 )
{
  ldv_func_ret_type___8 ldv_func_res ;
  bool tmp ;
  {
  tmp = cancel_delayed_work(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_work_3(& ldv_func_arg1->work);
  return (ldv_func_res);
}
}
bool ldv_cancel_work_sync_45(struct work_struct *ldv_func_arg1 )
{
  ldv_func_ret_type___9 ldv_func_res ;
  bool tmp ;
  {
  tmp = cancel_work_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_work_3(ldv_func_arg1);
  return (ldv_func_res);
}
}
__inline static long ldv__builtin_expect(long exp , long c ) ;
__inline static __u16 __le16_to_cpup(__le16 const *p )
{
  {
  return ((__u16 )*p);
}
}
void *ldv_err_ptr(long error ) ;
extern void *memcpy(void * , void const * , size_t ) ;
extern void *memmove(void * , void const * , size_t ) ;
__inline static void *ERR_PTR(long error ) ;
__inline static long PTR_ERR(void const *ptr ) ;
__inline static bool IS_ERR(void const *ptr ) ;
bool ldv_queue_work_on_69(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_71(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_70(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_73(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_72(struct workqueue_struct *ldv_func_arg1 ) ;
bool ldv_cancel_delayed_work_96(struct delayed_work *ldv_func_arg1 ) ;
bool ldv_cancel_delayed_work_97(struct delayed_work *ldv_func_arg1 ) ;
bool ldv_cancel_delayed_work_98(struct delayed_work *ldv_func_arg1 ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
__inline static struct sk_buff *alloc_skb(unsigned int size , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_87(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_95(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_copy_89(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
int ldv_pskb_expand_head_85(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags ) ;
int ldv_pskb_expand_head_93(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags ) ;
int ldv_pskb_expand_head_94(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags ) ;
__inline static void __skb_queue_head_init(struct sk_buff_head *list )
{
  struct sk_buff *tmp ;
  {
  tmp = (struct sk_buff *)list;
  list->next = tmp;
  list->prev = tmp;
  list->qlen = 0U;
  return;
}
}
__inline static void skb_queue_head_init(struct sk_buff_head *list )
{
  struct lock_class_key __key ;
  {
  spinlock_check(& list->lock);
  __raw_spin_lock_init(& list->lock.__annonCompField18.rlock, "&(&list->lock)->rlock",
                       & __key);
  __skb_queue_head_init(list);
  return;
}
}
extern void skb_queue_tail(struct sk_buff_head * , struct sk_buff * ) ;
extern struct sk_buff *skb_dequeue(struct sk_buff_head * ) ;
__inline static bool skb_is_nonlinear(struct sk_buff const *skb )
{
  {
  return ((unsigned int )skb->data_len != 0U);
}
}
extern unsigned char *skb_put(struct sk_buff * , unsigned int ) ;
extern unsigned char *skb_push(struct sk_buff * , unsigned int ) ;
__inline static int skb_tailroom(struct sk_buff const *skb )
{
  bool tmp ;
  {
  tmp = skb_is_nonlinear(skb);
  return ((int )tmp ? 0 : (int )((unsigned int )skb->end - (unsigned int )skb->tail));
}
}
__inline static void skb_reserve(struct sk_buff *skb , int len )
{
  {
  skb->data = skb->data + (unsigned long )len;
  skb->tail = skb->tail + (sk_buff_data_t )len;
  return;
}
}
extern void skb_queue_purge(struct sk_buff_head * ) ;
struct sk_buff *ldv___netdev_alloc_skb_90(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_91(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_92(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags ) ;
__inline static u16 get_unaligned_le16(void const *p )
{
  __u16 tmp ;
  {
  tmp = __le16_to_cpup((__le16 const *)p);
  return (tmp);
}
}
__inline static struct sk_buff *bt_skb_alloc(unsigned int len , gfp_t how )
{
  struct sk_buff *skb ;
  {
  skb = alloc_skb(len + 8U, how);
  if ((unsigned long )skb != (unsigned long )((struct sk_buff *)0)) {
    skb_reserve(skb, 8);
    ((struct bt_skb_cb *)(& skb->cb))->incoming = 0U;
  } else {
  }
  return (skb);
}
}
extern int hci_recv_frame(struct hci_dev * , struct sk_buff * ) ;
struct sk_buff *h4_recv_buf(struct hci_dev *hdev , struct sk_buff *skb , unsigned char const *buffer ,
                            int count , struct h4_recv_pkt const *pkts , int pkts_count ) ;
static int h4_open(struct hci_uart *hu )
{
  struct h4_struct *h4 ;
  struct _ddebug descriptor ;
  long tmp ;
  void *tmp___0 ;
  {
  descriptor.modname = "hci_uart";
  descriptor.function = "h4_open";
  descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/4072/dscv_tempdir/dscv/ri/43_2a/drivers/bluetooth/hci_h4.c";
  descriptor.format = "hu %p\n";
  descriptor.lineno = 60U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "hu %p\n", hu);
  } else {
  }
  tmp___0 = kzalloc(104UL, 208U);
  h4 = (struct h4_struct *)tmp___0;
  if ((unsigned long )h4 == (unsigned long )((struct h4_struct *)0)) {
    return (-12);
  } else {
  }
  skb_queue_head_init(& h4->txq);
  hu->priv = (void *)h4;
  return (0);
}
}
static int h4_flush(struct hci_uart *hu )
{
  struct h4_struct *h4 ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  h4 = (struct h4_struct *)hu->priv;
  descriptor.modname = "hci_uart";
  descriptor.function = "h4_flush";
  descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/4072/dscv_tempdir/dscv/ri/43_2a/drivers/bluetooth/hci_h4.c";
  descriptor.format = "hu %p\n";
  descriptor.lineno = 77U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "hu %p\n", hu);
  } else {
  }
  skb_queue_purge(& h4->txq);
  return (0);
}
}
static int h4_close(struct hci_uart *hu )
{
  struct h4_struct *h4 ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  h4 = (struct h4_struct *)hu->priv;
  hu->priv = (void *)0;
  descriptor.modname = "hci_uart";
  descriptor.function = "h4_close";
  descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/4072/dscv_tempdir/dscv/ri/43_2a/drivers/bluetooth/hci_h4.c";
  descriptor.format = "hu %p\n";
  descriptor.lineno = 91U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "hu %p\n", hu);
  } else {
  }
  skb_queue_purge(& h4->txq);
  kfree_skb(h4->rx_skb);
  hu->priv = (void *)0;
  kfree((void const *)h4);
  return (0);
}
}
static int h4_enqueue(struct hci_uart *hu , struct sk_buff *skb )
{
  struct h4_struct *h4 ;
  struct _ddebug descriptor ;
  long tmp ;
  unsigned char *tmp___0 ;
  {
  h4 = (struct h4_struct *)hu->priv;
  descriptor.modname = "hci_uart";
  descriptor.function = "h4_enqueue";
  descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/4072/dscv_tempdir/dscv/ri/43_2a/drivers/bluetooth/hci_h4.c";
  descriptor.format = "hu %p skb %p\n";
  descriptor.lineno = 108U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "hu %p skb %p\n", hu, skb);
  } else {
  }
  tmp___0 = skb_push(skb, 1U);
  memmove((void *)tmp___0, (void const *)(& ((struct bt_skb_cb *)(& skb->cb))->pkt_type),
           1UL);
  skb_queue_tail(& h4->txq, skb);
  return (0);
}
}
static struct h4_recv_pkt const h4_recv_pkts[3U] = { {2U, 4U, 2U, 2U, 1028U, & hci_recv_frame},
        {3U, 3U, 2U, 1U, 255U, & hci_recv_frame},
        {4U, 2U, 1U, 1U, 260U, & hci_recv_frame}};
static int h4_recv(struct hci_uart *hu , void const *data , int count )
{
  struct h4_struct *h4 ;
  int tmp ;
  int err ;
  long tmp___0 ;
  bool tmp___1 ;
  {
  h4 = (struct h4_struct *)hu->priv;
  tmp = constant_test_bit(1L, (unsigned long const volatile *)(& hu->flags));
  if (tmp == 0) {
    return (-49);
  } else {
  }
  h4->rx_skb = h4_recv_buf(hu->hdev, h4->rx_skb, (unsigned char const *)data, count,
                           (struct h4_recv_pkt const *)(& h4_recv_pkts), 3);
  tmp___1 = IS_ERR((void const *)h4->rx_skb);
  if ((int )tmp___1) {
    tmp___0 = PTR_ERR((void const *)h4->rx_skb);
    err = (int )tmp___0;
    bt_err("%s: Frame reassembly failed (%d)\n", (char *)(& (hu->hdev)->name), err);
    h4->rx_skb = (struct sk_buff *)0;
    return (err);
  } else {
  }
  return (count);
}
}
static struct sk_buff *h4_dequeue(struct hci_uart *hu )
{
  struct h4_struct *h4 ;
  struct sk_buff *tmp ;
  {
  h4 = (struct h4_struct *)hu->priv;
  tmp = skb_dequeue(& h4->txq);
  return (tmp);
}
}
static struct hci_uart_proto const h4p =
     {0U, "H4", 0U, 0U, & h4_open, & h4_close, & h4_flush, 0, 0, & h4_recv, & h4_enqueue,
    & h4_dequeue};
int h4_init(void)
{
  int tmp ;
  {
  tmp = hci_uart_register_proto(& h4p);
  return (tmp);
}
}
int h4_deinit(void)
{
  int tmp ;
  {
  tmp = hci_uart_unregister_proto(& h4p);
  return (tmp);
}
}
struct sk_buff *h4_recv_buf(struct hci_dev *hdev , struct sk_buff *skb , unsigned char const *buffer ,
                            int count , struct h4_recv_pkt const *pkts , int pkts_count )
{
  int i ;
  int len ;
  void *tmp ;
  void *tmp___0 ;
  uint __min1 ;
  uint __min2 ;
  unsigned char *tmp___1 ;
  void *tmp___2 ;
  u16 dlen ;
  void *tmp___3 ;
  int tmp___4 ;
  void *tmp___5 ;
  int tmp___6 ;
  void *tmp___7 ;
  {
  goto ldv_51375;
  ldv_51385: ;
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    i = 0;
    goto ldv_51371;
    ldv_51370: ;
    if ((int )((unsigned char )*buffer) != (int )((unsigned char )(pkts + (unsigned long )i)->type)) {
      goto ldv_51368;
    } else {
    }
    skb = bt_skb_alloc((unsigned int )(pkts + (unsigned long )i)->maxlen, 32U);
    if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
      tmp = ERR_PTR(-12L);
      return ((struct sk_buff *)tmp);
    } else {
    }
    ((struct bt_skb_cb *)(& skb->cb))->pkt_type = (pkts + (unsigned long )i)->type;
    ((struct bt_skb_cb *)(& skb->cb))->expect = (__u16 )(pkts + (unsigned long )i)->hlen;
    goto ldv_51369;
    ldv_51368:
    i = i + 1;
    ldv_51371: ;
    if (i < pkts_count) {
      goto ldv_51370;
    } else {
    }
    ldv_51369: ;
    if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
      tmp___0 = ERR_PTR(-84L);
      return ((struct sk_buff *)tmp___0);
    } else {
    }
    count = count + -1;
    buffer = buffer + 1UL;
  } else {
  }
  __min1 = (unsigned int )((struct bt_skb_cb *)(& skb->cb))->expect - skb->len;
  __min2 = (uint )count;
  len = (int )(__min1 < __min2 ? __min1 : __min2);
  tmp___1 = skb_put(skb, (unsigned int )len);
  memcpy((void *)tmp___1, (void const *)buffer, (size_t )len);
  count = count - len;
  buffer = buffer + (unsigned long )len;
  if (skb->len < (unsigned int )((struct bt_skb_cb *)(& skb->cb))->expect) {
    goto ldv_51375;
  } else {
  }
  i = 0;
  goto ldv_51378;
  ldv_51377: ;
  if ((int )((struct bt_skb_cb *)(& skb->cb))->pkt_type == (int )((unsigned char )(pkts + (unsigned long )i)->type)) {
    goto ldv_51376;
  } else {
  }
  i = i + 1;
  ldv_51378: ;
  if (i < pkts_count) {
    goto ldv_51377;
  } else {
  }
  ldv_51376: ;
  if (i >= pkts_count) {
    kfree_skb(skb);
    tmp___2 = ERR_PTR(-84L);
    return ((struct sk_buff *)tmp___2);
  } else {
  }
  if (skb->len == (unsigned int )(pkts + (unsigned long )i)->hlen) {
    switch ((int )(pkts + (unsigned long )i)->lsize) {
    case 0:
    (*((pkts + (unsigned long )i)->recv))(hdev, skb);
    skb = (struct sk_buff *)0;
    goto ldv_51381;
    case 1:
    dlen = (u16 )*(skb->data + (unsigned long )(pkts + (unsigned long )i)->loff);
    ((struct bt_skb_cb *)(& skb->cb))->expect = (int )((struct bt_skb_cb *)(& skb->cb))->expect + (int )dlen;
    tmp___4 = skb_tailroom((struct sk_buff const *)skb);
    if (tmp___4 < (int )dlen) {
      kfree_skb(skb);
      tmp___3 = ERR_PTR(-90L);
      return ((struct sk_buff *)tmp___3);
    } else {
    }
    goto ldv_51381;
    case 2:
    dlen = get_unaligned_le16((void const *)skb->data + (unsigned long )(pkts + (unsigned long )i)->loff);
    ((struct bt_skb_cb *)(& skb->cb))->expect = (int )((struct bt_skb_cb *)(& skb->cb))->expect + (int )dlen;
    tmp___6 = skb_tailroom((struct sk_buff const *)skb);
    if (tmp___6 < (int )dlen) {
      kfree_skb(skb);
      tmp___5 = ERR_PTR(-90L);
      return ((struct sk_buff *)tmp___5);
    } else {
    }
    goto ldv_51381;
    default:
    kfree_skb(skb);
    tmp___7 = ERR_PTR(-84L);
    return ((struct sk_buff *)tmp___7);
    }
    ldv_51381: ;
  } else {
    (*((pkts + (unsigned long )i)->recv))(hdev, skb);
    skb = (struct sk_buff *)0;
  }
  ldv_51375: ;
  if (count != 0) {
    goto ldv_51385;
  } else {
  }
  return (skb);
}
}
int ldv_retval_4 ;
int ldv_retval_3 ;
void ldv_initialize_hci_uart_proto_11(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(304UL);
  h4p_group0 = (struct hci_uart *)tmp;
  return;
}
}
void ldv_main_exported_11(void)
{
  struct sk_buff *ldvarg6 ;
  void *tmp ;
  void *ldvarg5 ;
  void *tmp___0 ;
  int ldvarg4 ;
  int tmp___1 ;
  {
  tmp = ldv_init_zalloc(232UL);
  ldvarg6 = (struct sk_buff *)tmp;
  tmp___0 = ldv_init_zalloc(1UL);
  ldvarg5 = tmp___0;
  ldv_memset((void *)(& ldvarg4), 0, 4UL);
  tmp___1 = __VERIFIER_nondet_int();
  switch (tmp___1) {
  case 0: ;
  if (ldv_state_variable_11 == 1) {
    h4_enqueue(h4p_group0, ldvarg6);
    ldv_state_variable_11 = 1;
  } else {
  }
  if (ldv_state_variable_11 == 2) {
    h4_enqueue(h4p_group0, ldvarg6);
    ldv_state_variable_11 = 2;
  } else {
  }
  goto ldv_51399;
  case 1: ;
  if (ldv_state_variable_11 == 1) {
    h4_recv(h4p_group0, (void const *)ldvarg5, ldvarg4);
    ldv_state_variable_11 = 1;
  } else {
  }
  if (ldv_state_variable_11 == 2) {
    h4_recv(h4p_group0, (void const *)ldvarg5, ldvarg4);
    ldv_state_variable_11 = 2;
  } else {
  }
  goto ldv_51399;
  case 2: ;
  if (ldv_state_variable_11 == 1) {
    h4_flush(h4p_group0);
    ldv_state_variable_11 = 1;
  } else {
  }
  if (ldv_state_variable_11 == 2) {
    h4_flush(h4p_group0);
    ldv_state_variable_11 = 2;
  } else {
  }
  goto ldv_51399;
  case 3: ;
  if (ldv_state_variable_11 == 2) {
    ldv_retval_4 = h4_close(h4p_group0);
    if (ldv_retval_4 == 0) {
      ldv_state_variable_11 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
  } else {
  }
  goto ldv_51399;
  case 4: ;
  if (ldv_state_variable_11 == 1) {
    h4_dequeue(h4p_group0);
    ldv_state_variable_11 = 1;
  } else {
  }
  if (ldv_state_variable_11 == 2) {
    h4_dequeue(h4p_group0);
    ldv_state_variable_11 = 2;
  } else {
  }
  goto ldv_51399;
  case 5: ;
  if (ldv_state_variable_11 == 1) {
    ldv_retval_3 = h4_open(h4p_group0);
    if (ldv_retval_3 == 0) {
      ldv_state_variable_11 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
  } else {
  }
  goto ldv_51399;
  default:
  ldv_stop();
  }
  ldv_51399: ;
  return;
}
}
__inline static void *ERR_PTR(long error )
{
  void *tmp ;
  {
  tmp = ldv_err_ptr(error);
  return (tmp);
}
}
bool ldv_queue_work_on_69(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_3(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_70(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___3 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_3(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_71(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_3(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_72(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_3(2);
  return;
}
}
bool ldv_queue_delayed_work_on_73(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___5 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_3(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
__inline static struct sk_buff *alloc_skb(unsigned int size , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
int ldv_pskb_expand_head_85(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  return __VERIFIER_nondet_int();
}
}
struct sk_buff *ldv_skb_clone_87(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv_skb_copy_89(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_90(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_91(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_92(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
int ldv_pskb_expand_head_93(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  return __VERIFIER_nondet_int();
}
}
int ldv_pskb_expand_head_94(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  return __VERIFIER_nondet_int();
}
}
struct sk_buff *ldv_skb_clone_95(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
bool ldv_cancel_delayed_work_96(struct delayed_work *ldv_func_arg1 )
{
  ldv_func_ret_type___6 ldv_func_res ;
  bool tmp ;
  {
  tmp = cancel_delayed_work(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_work_3(& ldv_func_arg1->work);
  return (ldv_func_res);
}
}
bool ldv_cancel_delayed_work_97(struct delayed_work *ldv_func_arg1 )
{
  ldv_func_ret_type___7 ldv_func_res ;
  bool tmp ;
  {
  tmp = cancel_delayed_work(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_work_3(& ldv_func_arg1->work);
  return (ldv_func_res);
}
}
bool ldv_cancel_delayed_work_98(struct delayed_work *ldv_func_arg1 )
{
  ldv_func_ret_type___8 ldv_func_res ;
  bool tmp ;
  {
  tmp = cancel_delayed_work(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_work_3(& ldv_func_arg1->work);
  return (ldv_func_res);
}
}
__inline static long ldv__builtin_expect(long exp , long c ) ;
__inline static __u16 __fswab16(__u16 val )
{
  {
  return ((__u16 )((int )((short )((int )val << 8)) | (int )((short )((int )val >> 8))));
}
}
__inline static __u16 __swab16p(__u16 const *p )
{
  __u16 tmp ;
  {
  tmp = __fswab16((int )*p);
  return (tmp);
}
}
__inline static __u16 __be16_to_cpup(__be16 const *p )
{
  __u16 tmp ;
  {
  tmp = __swab16p(p);
  return (tmp);
}
}
extern int memcmp(void const * , void const * , size_t ) ;
extern void _raw_spin_unlock_irqrestore(raw_spinlock_t * , unsigned long ) ;
__inline static void ldv_spin_unlock_irqrestore_118(spinlock_t *lock , unsigned long flags )
{
  {
  _raw_spin_unlock_irqrestore(& lock->__annonCompField18.rlock, flags);
  return;
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags ) ;
extern unsigned long volatile jiffies ;
extern int del_timer(struct timer_list * ) ;
int ldv_del_timer_152(struct timer_list *ldv_func_arg1 ) ;
extern int mod_timer(struct timer_list * , unsigned long ) ;
int ldv_mod_timer_151(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
extern int del_timer_sync(struct timer_list * ) ;
int ldv_del_timer_sync_153(struct timer_list *ldv_func_arg1 ) ;
bool ldv_queue_work_on_121(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_123(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_122(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_125(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_124(struct workqueue_struct *ldv_func_arg1 ) ;
bool ldv_cancel_delayed_work_148(struct delayed_work *ldv_func_arg1 ) ;
bool ldv_cancel_delayed_work_149(struct delayed_work *ldv_func_arg1 ) ;
bool ldv_cancel_delayed_work_150(struct delayed_work *ldv_func_arg1 ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
void activate_pending_timer_4(struct timer_list *timer , unsigned long data , int pending_flag ) ;
void choose_timer_4(struct timer_list *timer ) ;
void disable_suitable_timer_4(struct timer_list *timer ) ;
int reg_timer_4(struct timer_list *timer ) ;
__inline static struct sk_buff *alloc_skb(unsigned int size , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_139(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_147(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_copy_141(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
int ldv_pskb_expand_head_137(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_145(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_146(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
__inline static int skb_queue_empty(struct sk_buff_head const *list )
{
  {
  return ((unsigned long )((struct sk_buff const *)list->next) == (unsigned long )((struct sk_buff const *)list));
}
}
__inline static struct sk_buff *skb_peek_tail(struct sk_buff_head const *list_ )
{
  struct sk_buff *skb ;
  {
  skb = list_->prev;
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)list_)) {
    skb = (struct sk_buff *)0;
  } else {
  }
  return (skb);
}
}
__inline static __u32 skb_queue_len(struct sk_buff_head const *list_ )
{
  {
  return ((__u32 )list_->qlen);
}
}
__inline static void __skb_insert(struct sk_buff *newsk , struct sk_buff *prev , struct sk_buff *next ,
                                  struct sk_buff_head *list )
{
  struct sk_buff *tmp ;
  {
  newsk->__annonCompField87.__annonCompField86.next = next;
  newsk->__annonCompField87.__annonCompField86.prev = prev;
  tmp = newsk;
  prev->__annonCompField87.__annonCompField86.next = tmp;
  next->__annonCompField87.__annonCompField86.prev = tmp;
  list->qlen = list->qlen + 1U;
  return;
}
}
__inline static void __skb_queue_before(struct sk_buff_head *list , struct sk_buff *next ,
                                        struct sk_buff *newsk )
{
  {
  __skb_insert(newsk, next->__annonCompField87.__annonCompField86.prev, next, list);
  return;
}
}
extern void skb_queue_head(struct sk_buff_head * , struct sk_buff * ) ;
__inline static void __skb_queue_tail(struct sk_buff_head *list , struct sk_buff *newsk )
{
  {
  __skb_queue_before(list, (struct sk_buff *)list, newsk);
  return;
}
}
__inline static void __skb_unlink(struct sk_buff *skb , struct sk_buff_head *list )
{
  struct sk_buff *next ;
  struct sk_buff *prev ;
  struct sk_buff *tmp ;
  {
  list->qlen = list->qlen - 1U;
  next = skb->__annonCompField87.__annonCompField86.next;
  prev = skb->__annonCompField87.__annonCompField86.prev;
  tmp = (struct sk_buff *)0;
  skb->__annonCompField87.__annonCompField86.prev = tmp;
  skb->__annonCompField87.__annonCompField86.next = tmp;
  next->__annonCompField87.__annonCompField86.prev = prev;
  prev->__annonCompField87.__annonCompField86.next = next;
  return;
}
}
__inline static struct sk_buff *__skb_dequeue_tail(struct sk_buff_head *list )
{
  struct sk_buff *skb ;
  struct sk_buff *tmp ;
  {
  tmp = skb_peek_tail((struct sk_buff_head const *)list);
  skb = tmp;
  if ((unsigned long )skb != (unsigned long )((struct sk_buff *)0)) {
    __skb_unlink(skb, list);
  } else {
  }
  return (skb);
}
}
extern void skb_trim(struct sk_buff * , unsigned int ) ;
struct sk_buff *ldv___netdev_alloc_skb_142(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_143(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_144(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
extern u8 const byte_rev_table[256U] ;
__inline static u8 __bitrev8(u8 byte )
{
  {
  return ((u8 )byte_rev_table[(int )byte]);
}
}
__inline static u16 __bitrev16(u16 x )
{
  u8 tmp ;
  u8 tmp___0 ;
  {
  tmp = __bitrev8((int )((u8 )x));
  tmp___0 = __bitrev8((int )((u8 )((int )x >> 8)));
  return ((u16 )((int )((short )((int )tmp << 8)) | (int )((short )tmp___0)));
}
}
__inline static u16 get_unaligned_be16(void const *p )
{
  __u16 tmp ;
  {
  tmp = __be16_to_cpup((__be16 const *)p);
  return (tmp);
}
}
__inline static struct sk_buff *bt_skb_alloc___0(unsigned int len , gfp_t how )
{
  struct sk_buff *skb ;
  {
  skb = alloc_skb(len + 8U, how);
  if ((unsigned long )skb != (unsigned long )((struct sk_buff *)0)) {
    skb_reserve(skb, 8);
    ((struct bt_skb_cb *)(& skb->cb))->incoming = 0U;
  } else {
  }
  return (skb);
}
}
static bool txcrc = 1;
static bool hciextn = 1;
static u16 const crc_table[16U] =
  { 0U, 4225U, 8450U, 12675U,
        16900U, 21125U, 25350U, 29575U,
        33800U, 38025U, 42250U, 46475U,
        50700U, 54925U, 59150U, 63375U};
static void bcsp_crc_update(u16 *crc , u8 d )
{
  u16 reg ;
  {
  reg = *crc;
  reg = (u16 )(((int )reg >> 4) ^ (int )((unsigned short )crc_table[((int )reg ^ (int )d) & 15]));
  reg = (u16 )(((int )reg >> 4) ^ (int )((unsigned short )crc_table[((int )reg ^ ((int )d >> 4)) & 15]));
  *crc = reg;
  return;
}
}
static void bcsp_slip_msgdelim(struct sk_buff *skb )
{
  char pkt_delim ;
  unsigned char *tmp ;
  {
  pkt_delim = -64;
  tmp = skb_put(skb, 1U);
  memcpy((void *)tmp, (void const *)(& pkt_delim), 1UL);
  return;
}
}
static void bcsp_slip_one_byte(struct sk_buff *skb , u8 c )
{
  char esc_c0[2U] ;
  char esc_db[2U] ;
  unsigned char *tmp ;
  unsigned char *tmp___0 ;
  unsigned char *tmp___1 ;
  {
  esc_c0[0] = -37;
  esc_c0[1] = -36;
  esc_db[0] = -37;
  esc_db[1] = -35;
  switch ((int )c) {
  case 192:
  tmp = skb_put(skb, 2U);
  memcpy((void *)tmp, (void const *)(& esc_c0), 2UL);
  goto ldv_51376;
  case 219:
  tmp___0 = skb_put(skb, 2U);
  memcpy((void *)tmp___0, (void const *)(& esc_db), 2UL);
  goto ldv_51376;
  default:
  tmp___1 = skb_put(skb, 1U);
  memcpy((void *)tmp___1, (void const *)(& c), 1UL);
  }
  ldv_51376: ;
  return;
}
}
static int bcsp_enqueue(struct hci_uart *hu , struct sk_buff *skb )
{
  struct bcsp_struct *bcsp___0 ;
  {
  bcsp___0 = (struct bcsp_struct *)hu->priv;
  if (skb->len > 4095U) {
    bt_err("Packet too long\n");
    kfree_skb(skb);
    return (0);
  } else {
  }
  switch ((int )((struct bt_skb_cb *)(& skb->cb))->pkt_type) {
  case 2: ;
  case 1:
  skb_queue_tail(& bcsp___0->rel, skb);
  goto ldv_51386;
  case 3:
  skb_queue_tail(& bcsp___0->unrel, skb);
  goto ldv_51386;
  default:
  bt_err("Unknown packet type\n");
  kfree_skb(skb);
  goto ldv_51386;
  }
  ldv_51386: ;
  return (0);
}
}
static struct sk_buff *bcsp_prepare_pkt(struct bcsp_struct *bcsp___0 , u8 *data ,
                                        int len , int pkt_type )
{
  struct sk_buff *nskb ;
  u8 hdr[4U] ;
  u8 chan ;
  u16 bcsp_txmsg_crc ;
  int rel ;
  int i ;
  __le16 opcode ;
  u8 desc ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  u16 __x ;
  u16 tmp___1 ;
  {
  bcsp_txmsg_crc = 65535U;
  switch (pkt_type) {
  case 2:
  chan = 6U;
  rel = 1;
  goto ldv_51402;
  case 1:
  chan = 5U;
  rel = 1;
  goto ldv_51402;
  case 3:
  chan = 7U;
  rel = 0;
  goto ldv_51402;
  case 6:
  chan = 1U;
  rel = 0;
  goto ldv_51402;
  case 5:
  chan = 0U;
  rel = 0;
  goto ldv_51402;
  default:
  bt_err("Unknown packet type\n");
  return ((struct sk_buff *)0);
  }
  ldv_51402: ;
  if ((int )hciextn && (unsigned int )chan == 5U) {
    opcode = ((struct hci_command_hdr *)data)->opcode;
    if ((unsigned int )((int )opcode >> 10) == 63U) {
      desc = *(data + 3UL);
      if (((int )desc & 240) == 192) {
        data = data + 4UL;
        len = len + -4;
        chan = (unsigned int )desc & 15U;
      } else {
      }
    } else {
    }
  } else {
  }
  nskb = alloc_skb((unsigned int )((len + 7) * 2), 32U);
  if ((unsigned long )nskb == (unsigned long )((struct sk_buff *)0)) {
    return ((struct sk_buff *)0);
  } else {
  }
  ((struct bt_skb_cb *)(& nskb->cb))->pkt_type = (__u8 )pkt_type;
  bcsp_slip_msgdelim(nskb);
  hdr[0] = (int )bcsp___0->rxseq_txack << 3U;
  bcsp___0->txack_req = 0U;
  descriptor.modname = "hci_uart";
  descriptor.function = "bcsp_prepare_pkt";
  descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/4072/dscv_tempdir/dscv/ri/43_2a/drivers/bluetooth/hci_bcsp.c";
  descriptor.format = "We request packet no %u to card\n";
  descriptor.lineno = 240U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "We request packet no %u to card\n", (int )bcsp___0->rxseq_txack);
  } else {
  }
  if (rel != 0) {
    hdr[0] = (u8 )((int )((signed char )hdr[0]) | (int )((signed char )((unsigned int )bcsp___0->msgq_txseq + 128U)));
    descriptor___0.modname = "hci_uart";
    descriptor___0.function = "bcsp_prepare_pkt";
    descriptor___0.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/4072/dscv_tempdir/dscv/ri/43_2a/drivers/bluetooth/hci_bcsp.c";
    descriptor___0.format = "Sending packet with seqno %u\n";
    descriptor___0.lineno = 244U;
    descriptor___0.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      __dynamic_pr_debug(& descriptor___0, "Sending packet with seqno %u\n", (int )bcsp___0->msgq_txseq);
    } else {
    }
    bcsp___0->msgq_txseq = (unsigned int )((u8 )((unsigned int )bcsp___0->msgq_txseq + 1U)) & 7U;
  } else {
  }
  if ((unsigned int )bcsp___0->use_crc != 0U) {
    hdr[0] = (u8 )((unsigned int )hdr[0] | 64U);
  } else {
  }
  hdr[1] = (u8 )((int )((signed char )(len << 4)) | (int )((signed char )chan));
  hdr[2] = (u8 )(len >> 4);
  hdr[3] = ~ (((int )hdr[0] + (int )hdr[1]) + (int )hdr[2]);
  i = 0;
  goto ldv_51414;
  ldv_51413:
  bcsp_slip_one_byte(nskb, (int )hdr[i]);
  if ((unsigned int )bcsp___0->use_crc != 0U) {
    bcsp_crc_update(& bcsp_txmsg_crc, (int )hdr[i]);
  } else {
  }
  i = i + 1;
  ldv_51414: ;
  if (i <= 3) {
    goto ldv_51413;
  } else {
  }
  i = 0;
  goto ldv_51417;
  ldv_51416:
  bcsp_slip_one_byte(nskb, (int )*(data + (unsigned long )i));
  if ((unsigned int )bcsp___0->use_crc != 0U) {
    bcsp_crc_update(& bcsp_txmsg_crc, (int )*(data + (unsigned long )i));
  } else {
  }
  i = i + 1;
  ldv_51417: ;
  if (i < len) {
    goto ldv_51416;
  } else {
  }
  if ((unsigned int )bcsp___0->use_crc != 0U) {
    __x = bcsp_txmsg_crc;
    tmp___1 = __bitrev16((int )__x);
    bcsp_txmsg_crc = (u16 )((int )tmp___1);
    bcsp_slip_one_byte(nskb, (int )((unsigned char )((int )bcsp_txmsg_crc >> 8)));
    bcsp_slip_one_byte(nskb, (int )((unsigned char )bcsp_txmsg_crc));
  } else {
  }
  bcsp_slip_msgdelim(nskb);
  return (nskb);
}
}
static struct sk_buff *bcsp_dequeue(struct hci_uart *hu )
{
  struct bcsp_struct *bcsp___0 ;
  unsigned long flags ;
  struct sk_buff *skb ;
  struct sk_buff *nskb ;
  struct sk_buff *tmp ;
  struct sk_buff *nskb___0 ;
  struct sk_buff *tmp___0 ;
  struct sk_buff *nskb___1 ;
  struct sk_buff *tmp___1 ;
  {
  bcsp___0 = (struct bcsp_struct *)hu->priv;
  skb = skb_dequeue(& bcsp___0->unrel);
  if ((unsigned long )skb != (unsigned long )((struct sk_buff *)0)) {
    tmp = bcsp_prepare_pkt(bcsp___0, skb->data, (int )skb->len, (int )((struct bt_skb_cb *)(& skb->cb))->pkt_type);
    nskb = tmp;
    if ((unsigned long )nskb != (unsigned long )((struct sk_buff *)0)) {
      kfree_skb(skb);
      return (nskb);
    } else {
      skb_queue_head(& bcsp___0->unrel, skb);
      bt_err("Could not dequeue pkt because alloc_skb failed\n");
    }
  } else {
  }
  ldv_spin_lock();
  if (bcsp___0->unack.qlen <= 3U) {
    skb = skb_dequeue(& bcsp___0->rel);
    if ((unsigned long )skb != (unsigned long )((struct sk_buff *)0)) {
      tmp___0 = bcsp_prepare_pkt(bcsp___0, skb->data, (int )skb->len, (int )((struct bt_skb_cb *)(& skb->cb))->pkt_type);
      nskb___0 = tmp___0;
      if ((unsigned long )nskb___0 != (unsigned long )((struct sk_buff *)0)) {
        __skb_queue_tail(& bcsp___0->unack, skb);
        ldv_mod_timer_151(& bcsp___0->tbcsp, (unsigned long )jiffies + 62UL);
        spin_unlock_irqrestore(& bcsp___0->unack.lock, flags);
        return (nskb___0);
      } else {
        skb_queue_head(& bcsp___0->rel, skb);
        bt_err("Could not dequeue pkt because alloc_skb failed\n");
      }
    } else {
    }
  } else {
  }
  spin_unlock_irqrestore(& bcsp___0->unack.lock, flags);
  if ((unsigned int )bcsp___0->txack_req != 0U) {
    tmp___1 = bcsp_prepare_pkt(bcsp___0, (u8 *)0U, 0, 5);
    nskb___1 = tmp___1;
    return (nskb___1);
  } else {
  }
  return ((struct sk_buff *)0);
}
}
static int bcsp_flush(struct hci_uart *hu )
{
  struct _ddebug descriptor ;
  long tmp ;
  {
  descriptor.modname = "hci_uart";
  descriptor.function = "bcsp_flush";
  descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/4072/dscv_tempdir/dscv/ri/43_2a/drivers/bluetooth/hci_bcsp.c";
  descriptor.format = "hu %p\n";
  descriptor.lineno = 346U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "hu %p\n", hu);
  } else {
  }
  return (0);
}
}
static void bcsp_pkt_cull(struct bcsp_struct *bcsp___0 )
{
  struct sk_buff *skb ;
  struct sk_buff *tmp ;
  unsigned long flags ;
  int i ;
  int pkts_to_be_removed ;
  u8 seqno ;
  __u32 tmp___0 ;
  struct _ddebug descriptor ;
  __u32 tmp___1 ;
  long tmp___2 ;
  int tmp___3 ;
  {
  ldv_spin_lock();
  tmp___0 = skb_queue_len((struct sk_buff_head const *)(& bcsp___0->unack));
  pkts_to_be_removed = (int )tmp___0;
  seqno = bcsp___0->msgq_txseq;
  goto ldv_51448;
  ldv_51447: ;
  if ((int )bcsp___0->rxack == (int )seqno) {
    goto ldv_51446;
  } else {
  }
  pkts_to_be_removed = pkts_to_be_removed - 1;
  seqno = (unsigned int )((u8 )((unsigned int )seqno + 255U)) & 7U;
  ldv_51448: ;
  if (pkts_to_be_removed != 0) {
    goto ldv_51447;
  } else {
  }
  ldv_51446: ;
  if ((int )bcsp___0->rxack != (int )seqno) {
    bt_err("Peer acked invalid packet\n");
  } else {
  }
  descriptor.modname = "hci_uart";
  descriptor.function = "bcsp_pkt_cull";
  descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/4072/dscv_tempdir/dscv/ri/43_2a/drivers/bluetooth/hci_bcsp.c";
  descriptor.format = "Removing %u pkts out of %u, up to seqno %u\n";
  descriptor.lineno = 375U;
  descriptor.flags = 0U;
  tmp___2 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___2 != 0L) {
    tmp___1 = skb_queue_len((struct sk_buff_head const *)(& bcsp___0->unack));
    __dynamic_pr_debug(& descriptor, "Removing %u pkts out of %u, up to seqno %u\n",
                       pkts_to_be_removed, tmp___1, ((int )seqno + -1) & 7);
  } else {
  }
  i = 0;
  skb = bcsp___0->unack.next;
  tmp = skb->__annonCompField87.__annonCompField86.next;
  goto ldv_51453;
  ldv_51452: ;
  if (i >= pkts_to_be_removed) {
    goto ldv_51451;
  } else {
  }
  i = i + 1;
  __skb_unlink(skb, & bcsp___0->unack);
  kfree_skb(skb);
  skb = tmp;
  tmp = skb->__annonCompField87.__annonCompField86.next;
  ldv_51453: ;
  if ((unsigned long )((struct sk_buff *)(& bcsp___0->unack)) != (unsigned long )skb) {
    goto ldv_51452;
  } else {
  }
  ldv_51451:
  tmp___3 = skb_queue_empty((struct sk_buff_head const *)(& bcsp___0->unack));
  if (tmp___3 != 0) {
    ldv_del_timer_152(& bcsp___0->tbcsp);
  } else {
  }
  spin_unlock_irqrestore(& bcsp___0->unack.lock, flags);
  if (i != pkts_to_be_removed) {
    bt_err("Removed only %u out of %u pkts\n", i, pkts_to_be_removed);
  } else {
  }
  return;
}
}
static void bcsp_handle_le_pkt(struct hci_uart *hu )
{
  struct bcsp_struct *bcsp___0 ;
  u8 conf_pkt[4U] ;
  u8 conf_rsp_pkt[4U] ;
  u8 sync_pkt[4U] ;
  struct sk_buff *nskb ;
  struct sk_buff *tmp ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  unsigned char *tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  bcsp___0 = (struct bcsp_struct *)hu->priv;
  conf_pkt[0] = 173U;
  conf_pkt[1] = 239U;
  conf_pkt[2] = 172U;
  conf_pkt[3] = 237U;
  conf_rsp_pkt[0] = 222U;
  conf_rsp_pkt[1] = 173U;
  conf_rsp_pkt[2] = 208U;
  conf_rsp_pkt[3] = 208U;
  sync_pkt[0] = 218U;
  sync_pkt[1] = 220U;
  sync_pkt[2] = 237U;
  sync_pkt[3] = 237U;
  if ((unsigned int )((int )*((bcsp___0->rx_skb)->data + 1UL) >> 4) == 4U && (unsigned int )*((bcsp___0->rx_skb)->data + 2UL) == 0U) {
    tmp___3 = memcmp((void const *)(bcsp___0->rx_skb)->data + 4U, (void const *)(& conf_pkt),
                     4UL);
    if (tmp___3 == 0) {
      tmp = alloc_skb(4U, 32U);
      nskb = tmp;
      descriptor.modname = "hci_uart";
      descriptor.function = "bcsp_handle_le_pkt";
      descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/4072/dscv_tempdir/dscv/ri/43_2a/drivers/bluetooth/hci_bcsp.c";
      descriptor.format = "Found a LE conf pkt\n";
      descriptor.lineno = 411U;
      descriptor.flags = 0U;
      tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      if (tmp___0 != 0L) {
        __dynamic_pr_debug(& descriptor, "Found a LE conf pkt\n");
      } else {
      }
      if ((unsigned long )nskb == (unsigned long )((struct sk_buff *)0)) {
        return;
      } else {
      }
      tmp___1 = skb_put(nskb, 4U);
      memcpy((void *)tmp___1, (void const *)(& conf_rsp_pkt), 4UL);
      ((struct bt_skb_cb *)(& nskb->cb))->pkt_type = 6U;
      skb_queue_head(& bcsp___0->unrel, nskb);
      hci_uart_tx_wakeup(hu);
    } else {
      goto _L;
    }
  } else
  _L:
  if ((unsigned int )((int )*((bcsp___0->rx_skb)->data + 1UL) >> 4) == 4U && (unsigned int )*((bcsp___0->rx_skb)->data + 2UL) == 0U) {
    tmp___2 = memcmp((void const *)(bcsp___0->rx_skb)->data + 4U, (void const *)(& sync_pkt),
                     4UL);
    if (tmp___2 == 0) {
      bt_err("Found a LE sync pkt, card has reset\n");
    } else {
    }
  } else {
  }
  return;
}
}
__inline static void bcsp_unslip_one_byte(struct bcsp_struct *bcsp___0 , unsigned char byte )
{
  u8 c0 ;
  u8 db ;
  unsigned char *tmp ;
  unsigned char *tmp___0 ;
  unsigned char *tmp___1 ;
  {
  c0 = 192U;
  db = 219U;
  switch ((unsigned int )bcsp___0->rx_esc_state) {
  case 0U: ;
  switch ((int )byte) {
  case 219:
  bcsp___0->rx_esc_state = 1;
  goto ldv_51472;
  default:
  tmp = skb_put(bcsp___0->rx_skb, 1U);
  memcpy((void *)tmp, (void const *)(& byte), 1UL);
  if (((int )*((bcsp___0->rx_skb)->data) & 64) != 0 && (unsigned int )bcsp___0->rx_state != 4U) {
    bcsp_crc_update(& bcsp___0->message_crc, (int )byte);
  } else {
  }
  bcsp___0->rx_count = bcsp___0->rx_count - 1UL;
  }
  ldv_51472: ;
  goto ldv_51474;
  case 1U: ;
  switch ((int )byte) {
  case 220:
  tmp___0 = skb_put(bcsp___0->rx_skb, 1U);
  memcpy((void *)tmp___0, (void const *)(& c0), 1UL);
  if (((int )*((bcsp___0->rx_skb)->data) & 64) != 0 && (unsigned int )bcsp___0->rx_state != 4U) {
    bcsp_crc_update(& bcsp___0->message_crc, 192);
  } else {
  }
  bcsp___0->rx_esc_state = 0;
  bcsp___0->rx_count = bcsp___0->rx_count - 1UL;
  goto ldv_51477;
  case 221:
  tmp___1 = skb_put(bcsp___0->rx_skb, 1U);
  memcpy((void *)tmp___1, (void const *)(& db), 1UL);
  if (((int )*((bcsp___0->rx_skb)->data) & 64) != 0 && (unsigned int )bcsp___0->rx_state != 4U) {
    bcsp_crc_update(& bcsp___0->message_crc, 219);
  } else {
  }
  bcsp___0->rx_esc_state = 0;
  bcsp___0->rx_count = bcsp___0->rx_count - 1UL;
  goto ldv_51477;
  default:
  bt_err("Invalid byte %02x after esc byte\n", (int )byte);
  kfree_skb(bcsp___0->rx_skb);
  bcsp___0->rx_skb = (struct sk_buff *)0;
  bcsp___0->rx_state = 0;
  bcsp___0->rx_count = 0UL;
  }
  ldv_51477: ;
  }
  ldv_51474: ;
  return;
}
}
static void bcsp_complete_rx_pkt(struct hci_uart *hu )
{
  struct bcsp_struct *bcsp___0 ;
  int pass_up ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  struct hci_event_hdr hdr ;
  u8 desc ;
  unsigned char *tmp___1 ;
  unsigned char *tmp___2 ;
  {
  bcsp___0 = (struct bcsp_struct *)hu->priv;
  if ((int )((signed char )*((bcsp___0->rx_skb)->data)) < 0) {
    descriptor.modname = "hci_uart";
    descriptor.function = "bcsp_complete_rx_pkt";
    descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/4072/dscv_tempdir/dscv/ri/43_2a/drivers/bluetooth/hci_bcsp.c";
    descriptor.format = "Received seqno %u from card\n";
    descriptor.lineno = 482U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_pr_debug(& descriptor, "Received seqno %u from card\n", (int )bcsp___0->rxseq_txack);
    } else {
    }
    bcsp___0->rxseq_txack = (u8 )((int )bcsp___0->rxseq_txack + 1);
    bcsp___0->rxseq_txack = (unsigned int )bcsp___0->rxseq_txack & 7U;
    bcsp___0->txack_req = 1U;
    hci_uart_tx_wakeup(hu);
  } else {
  }
  bcsp___0->rxack = (unsigned int )((u8 )((int )*((bcsp___0->rx_skb)->data) >> 3)) & 7U;
  descriptor___0.modname = "hci_uart";
  descriptor___0.function = "bcsp_complete_rx_pkt";
  descriptor___0.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/4072/dscv_tempdir/dscv/ri/43_2a/drivers/bluetooth/hci_bcsp.c";
  descriptor___0.format = "Request for pkt %u from card\n";
  descriptor___0.lineno = 492U;
  descriptor___0.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    __dynamic_pr_debug(& descriptor___0, "Request for pkt %u from card\n", (int )bcsp___0->rxack);
  } else {
  }
  bcsp_pkt_cull(bcsp___0);
  if (((int )*((bcsp___0->rx_skb)->data + 1UL) & 15) == 6 && (int )((signed char )*((bcsp___0->rx_skb)->data)) < 0) {
    ((struct bt_skb_cb *)(& (bcsp___0->rx_skb)->cb))->pkt_type = 2U;
    pass_up = 1;
  } else
  if (((int )*((bcsp___0->rx_skb)->data + 1UL) & 15) == 5 && (int )((signed char )*((bcsp___0->rx_skb)->data)) < 0) {
    ((struct bt_skb_cb *)(& (bcsp___0->rx_skb)->cb))->pkt_type = 4U;
    pass_up = 1;
  } else
  if (((int )*((bcsp___0->rx_skb)->data + 1UL) & 15) == 7) {
    ((struct bt_skb_cb *)(& (bcsp___0->rx_skb)->cb))->pkt_type = 3U;
    pass_up = 1;
  } else
  if (((int )*((bcsp___0->rx_skb)->data + 1UL) & 15) == 1 && (int )((signed char )*((bcsp___0->rx_skb)->data)) >= 0) {
    bcsp_handle_le_pkt(hu);
    pass_up = 0;
  } else {
    pass_up = 0;
  }
  if (pass_up == 0) {
    desc = (unsigned int )*((bcsp___0->rx_skb)->data + 1UL) & 15U;
    if ((unsigned int )desc != 0U && (unsigned int )desc != 1U) {
      if ((int )hciextn) {
        desc = (u8 )((unsigned int )desc | 192U);
        skb_pull(bcsp___0->rx_skb, 4U);
        tmp___1 = skb_push(bcsp___0->rx_skb, 1U);
        memcpy((void *)tmp___1, (void const *)(& desc), 1UL);
        hdr.evt = 255U;
        hdr.plen = (__u8 )(bcsp___0->rx_skb)->len;
        tmp___2 = skb_push(bcsp___0->rx_skb, 2U);
        memcpy((void *)tmp___2, (void const *)(& hdr), 2UL);
        ((struct bt_skb_cb *)(& (bcsp___0->rx_skb)->cb))->pkt_type = 4U;
        hci_recv_frame(hu->hdev, bcsp___0->rx_skb);
      } else {
        bt_err("Packet for unknown channel (%u %s)\n", (int )*((bcsp___0->rx_skb)->data + 1UL) & 15,
               (int )((signed char )*((bcsp___0->rx_skb)->data)) < 0 ? (char *)"reliable" : (char *)"unreliable");
        kfree_skb(bcsp___0->rx_skb);
      }
    } else {
      kfree_skb(bcsp___0->rx_skb);
    }
  } else {
    skb_pull(bcsp___0->rx_skb, 4U);
    hci_recv_frame(hu->hdev, bcsp___0->rx_skb);
  }
  bcsp___0->rx_state = 0;
  bcsp___0->rx_skb = (struct sk_buff *)0;
  return;
}
}
static u16 bscp_get_crc(struct bcsp_struct *bcsp___0 )
{
  u16 tmp ;
  {
  tmp = get_unaligned_be16((void const *)(bcsp___0->rx_skb)->data + (unsigned long )((bcsp___0->rx_skb)->len - 2U));
  return (tmp);
}
}
static int bcsp_recv(struct hci_uart *hu , void const *data , int count )
{
  struct bcsp_struct *bcsp___0 ;
  unsigned char const *ptr ;
  struct _ddebug descriptor ;
  long tmp ;
  u16 tmp___0 ;
  u16 __x ;
  u16 tmp___1 ;
  u16 __x___0 ;
  u16 tmp___2 ;
  u16 tmp___3 ;
  {
  bcsp___0 = (struct bcsp_struct *)hu->priv;
  descriptor.modname = "hci_uart";
  descriptor.function = "bcsp_recv";
  descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/4072/dscv_tempdir/dscv/ri/43_2a/drivers/bluetooth/hci_bcsp.c";
  descriptor.format = "hu %p count %d rx_state %d rx_count %ld\n";
  descriptor.lineno = 561U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "hu %p count %d rx_state %d rx_count %ld\n",
                       hu, count, (unsigned int )bcsp___0->rx_state, bcsp___0->rx_count);
  } else {
  }
  ptr = (unsigned char const *)data;
  goto ldv_51502;
  ldv_51523: ;
  if (bcsp___0->rx_count != 0UL) {
    if ((unsigned int )((unsigned char )*ptr) == 192U) {
      bt_err("Short BCSP packet\n");
      kfree_skb(bcsp___0->rx_skb);
      bcsp___0->rx_state = 1;
      bcsp___0->rx_count = 0UL;
    } else {
      bcsp_unslip_one_byte(bcsp___0, (int )*ptr);
    }
    ptr = ptr + 1;
    count = count - 1;
    goto ldv_51502;
  } else {
  }
  switch ((unsigned int )bcsp___0->rx_state) {
  case 2U: ;
  if (~ (((int )*((bcsp___0->rx_skb)->data) + (int )*((bcsp___0->rx_skb)->data + 1UL)) + (int )*((bcsp___0->rx_skb)->data + 2UL)) != (int )*((bcsp___0->rx_skb)->data + 3UL)) {
    bt_err("Error in BCSP hdr checksum\n");
    kfree_skb(bcsp___0->rx_skb);
    bcsp___0->rx_state = 0;
    bcsp___0->rx_count = 0UL;
    goto ldv_51502;
  } else {
  }
  if ((int )((signed char )*((bcsp___0->rx_skb)->data)) < 0 && ((int )*((bcsp___0->rx_skb)->data) & 7) != (int )bcsp___0->rxseq_txack) {
    bt_err("Out-of-order packet arrived, got %u expected %u\n", (int )*((bcsp___0->rx_skb)->data) & 7,
           (int )bcsp___0->rxseq_txack);
    kfree_skb(bcsp___0->rx_skb);
    bcsp___0->rx_state = 0;
    bcsp___0->rx_count = 0UL;
    goto ldv_51502;
  } else {
  }
  bcsp___0->rx_state = 3;
  bcsp___0->rx_count = (unsigned long )(((int )*((bcsp___0->rx_skb)->data + 1UL) >> 4) + ((int )*((bcsp___0->rx_skb)->data + 2UL) << 4));
  goto ldv_51502;
  case 3U: ;
  if (((int )*((bcsp___0->rx_skb)->data) & 64) != 0) {
    bcsp___0->rx_state = 4;
    bcsp___0->rx_count = 2UL;
  } else {
    bcsp_complete_rx_pkt(hu);
  }
  goto ldv_51502;
  case 4U:
  __x___0 = bcsp___0->message_crc;
  tmp___2 = __bitrev16((int )__x___0);
  tmp___3 = bscp_get_crc(bcsp___0);
  if ((int )tmp___2 != (int )tmp___3) {
    tmp___0 = bscp_get_crc(bcsp___0);
    __x = bcsp___0->message_crc;
    tmp___1 = __bitrev16((int )__x);
    bt_err("Checksum failed: computed %04x received %04x\n", (int )tmp___1, (int )tmp___0);
    kfree_skb(bcsp___0->rx_skb);
    bcsp___0->rx_state = 0;
    bcsp___0->rx_count = 0UL;
    goto ldv_51502;
  } else {
  }
  skb_trim(bcsp___0->rx_skb, (bcsp___0->rx_skb)->len - 2U);
  bcsp_complete_rx_pkt(hu);
  goto ldv_51502;
  case 0U: ;
  switch ((int )*ptr) {
  case 192:
  bcsp___0->rx_state = 1;
  goto ldv_51516;
  default: ;
  goto ldv_51516;
  }
  ldv_51516:
  ptr = ptr + 1;
  count = count - 1;
  goto ldv_51518;
  case 1U: ;
  switch ((int )*ptr) {
  case 192:
  ptr = ptr + 1;
  count = count - 1;
  goto ldv_51521;
  default:
  bcsp___0->rx_state = 2;
  bcsp___0->rx_count = 4UL;
  bcsp___0->rx_esc_state = 0;
  bcsp___0->message_crc = 65535U;
  bcsp___0->rx_skb = bt_skb_alloc___0(4101U, 32U);
  if ((unsigned long )bcsp___0->rx_skb == (unsigned long )((struct sk_buff *)0)) {
    bt_err("Can\'t allocate mem for new packet\n");
    bcsp___0->rx_state = 0;
    bcsp___0->rx_count = 0UL;
    return (0);
  } else {
  }
  goto ldv_51521;
  }
  ldv_51521: ;
  goto ldv_51518;
  }
  ldv_51518: ;
  ldv_51502: ;
  if (count != 0) {
    goto ldv_51523;
  } else {
  }
  return (count);
}
}
static void bcsp_timed_event(unsigned long arg )
{
  struct hci_uart *hu ;
  struct bcsp_struct *bcsp___0 ;
  struct sk_buff *skb ;
  unsigned long flags ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  hu = (struct hci_uart *)arg;
  bcsp___0 = (struct bcsp_struct *)hu->priv;
  descriptor.modname = "hci_uart";
  descriptor.function = "bcsp_timed_event";
  descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/4072/dscv_tempdir/dscv/ri/43_2a/drivers/bluetooth/hci_bcsp.c";
  descriptor.format = "hu %p retransmitting %u pkts\n";
  descriptor.lineno = 677U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "hu %p retransmitting %u pkts\n", hu, bcsp___0->unack.qlen);
  } else {
  }
  ldv_spin_lock();
  goto ldv_51535;
  ldv_51534:
  bcsp___0->msgq_txseq = (unsigned int )((u8 )((unsigned int )bcsp___0->msgq_txseq + 255U)) & 7U;
  skb_queue_head(& bcsp___0->rel, skb);
  ldv_51535:
  skb = __skb_dequeue_tail(& bcsp___0->unack);
  if ((unsigned long )skb != (unsigned long )((struct sk_buff *)0)) {
    goto ldv_51534;
  } else {
  }
  spin_unlock_irqrestore(& bcsp___0->unack.lock, flags);
  hci_uart_tx_wakeup(hu);
  return;
}
}
static int bcsp_open(struct hci_uart *hu )
{
  struct bcsp_struct *bcsp___0 ;
  struct _ddebug descriptor ;
  long tmp ;
  void *tmp___0 ;
  {
  descriptor.modname = "hci_uart";
  descriptor.function = "bcsp_open";
  descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/4072/dscv_tempdir/dscv/ri/43_2a/drivers/bluetooth/hci_bcsp.c";
  descriptor.format = "hu %p\n";
  descriptor.lineno = 695U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "hu %p\n", hu);
  } else {
  }
  tmp___0 = kzalloc(456UL, 208U);
  bcsp___0 = (struct bcsp_struct *)tmp___0;
  if ((unsigned long )bcsp___0 == (unsigned long )((struct bcsp_struct *)0)) {
    return (-12);
  } else {
  }
  hu->priv = (void *)bcsp___0;
  skb_queue_head_init(& bcsp___0->unack);
  skb_queue_head_init(& bcsp___0->rel);
  skb_queue_head_init(& bcsp___0->unrel);
  reg_timer_4(& bcsp___0->tbcsp);
  bcsp___0->tbcsp.function = & bcsp_timed_event;
  bcsp___0->tbcsp.data = (unsigned long )hu;
  bcsp___0->rx_state = 0;
  if ((int )txcrc) {
    bcsp___0->use_crc = 1U;
  } else {
  }
  return (0);
}
}
static int bcsp_close(struct hci_uart *hu )
{
  struct bcsp_struct *bcsp___0 ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  bcsp___0 = (struct bcsp_struct *)hu->priv;
  ldv_del_timer_sync_153(& bcsp___0->tbcsp);
  hu->priv = (void *)0;
  descriptor.modname = "hci_uart";
  descriptor.function = "bcsp_close";
  descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/4072/dscv_tempdir/dscv/ri/43_2a/drivers/bluetooth/hci_bcsp.c";
  descriptor.format = "hu %p\n";
  descriptor.lineno = 726U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "hu %p\n", hu);
  } else {
  }
  skb_queue_purge(& bcsp___0->unack);
  skb_queue_purge(& bcsp___0->rel);
  skb_queue_purge(& bcsp___0->unrel);
  kfree((void const *)bcsp___0);
  return (0);
}
}
static struct hci_uart_proto const bcsp =
     {1U, "BCSP", 0U, 0U, & bcsp_open, & bcsp_close, & bcsp_flush, 0, 0, & bcsp_recv,
    & bcsp_enqueue, & bcsp_dequeue};
int bcsp_init(void)
{
  int tmp ;
  {
  tmp = hci_uart_register_proto(& bcsp);
  return (tmp);
}
}
int bcsp_deinit(void)
{
  int tmp ;
  {
  tmp = hci_uart_unregister_proto(& bcsp);
  return (tmp);
}
}
int ldv_retval_14 ;
int ldv_retval_13 ;
void activate_pending_timer_4(struct timer_list *timer , unsigned long data , int pending_flag )
{
  {
  if ((unsigned long )ldv_timer_list_4 == (unsigned long )timer) {
    if (ldv_timer_state_4 == 2 || pending_flag != 0) {
      ldv_timer_list_4 = timer;
      ldv_timer_list_4->data = data;
      ldv_timer_state_4 = 1;
    } else {
    }
    return;
  } else {
  }
  reg_timer_4(timer);
  ldv_timer_list_4->data = data;
  return;
}
}
void ldv_initialize_hci_uart_proto_10(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(304UL);
  bcsp_group0 = (struct hci_uart *)tmp;
  return;
}
}
void choose_timer_4(struct timer_list *timer )
{
  {
  LDV_IN_INTERRUPT = 2;
  (*(timer->function))(timer->data);
  LDV_IN_INTERRUPT = 1;
  ldv_timer_state_4 = 2;
  return;
}
}
void disable_suitable_timer_4(struct timer_list *timer )
{
  {
  if ((unsigned long )timer == (unsigned long )ldv_timer_list_4) {
    ldv_timer_state_4 = 0;
    return;
  } else {
  }
  return;
}
}
int reg_timer_4(struct timer_list *timer )
{
  {
  ldv_timer_list_4 = timer;
  ldv_timer_state_4 = 1;
  return (0);
}
}
void ldv_main_exported_10(void)
{
  int ldvarg16 ;
  void *ldvarg17 ;
  void *tmp ;
  struct sk_buff *ldvarg18 ;
  void *tmp___0 ;
  int tmp___1 ;
  {
  tmp = ldv_init_zalloc(1UL);
  ldvarg17 = tmp;
  tmp___0 = ldv_init_zalloc(232UL);
  ldvarg18 = (struct sk_buff *)tmp___0;
  ldv_memset((void *)(& ldvarg16), 0, 4UL);
  tmp___1 = __VERIFIER_nondet_int();
  switch (tmp___1) {
  case 0: ;
  if (ldv_state_variable_10 == 1) {
    bcsp_enqueue(bcsp_group0, ldvarg18);
    ldv_state_variable_10 = 1;
  } else {
  }
  if (ldv_state_variable_10 == 2) {
    bcsp_enqueue(bcsp_group0, ldvarg18);
    ldv_state_variable_10 = 2;
  } else {
  }
  goto ldv_51620;
  case 1: ;
  if (ldv_state_variable_10 == 1) {
    bcsp_recv(bcsp_group0, (void const *)ldvarg17, ldvarg16);
    ldv_state_variable_10 = 1;
  } else {
  }
  if (ldv_state_variable_10 == 2) {
    bcsp_recv(bcsp_group0, (void const *)ldvarg17, ldvarg16);
    ldv_state_variable_10 = 2;
  } else {
  }
  goto ldv_51620;
  case 2: ;
  if (ldv_state_variable_10 == 1) {
    bcsp_flush(bcsp_group0);
    ldv_state_variable_10 = 1;
  } else {
  }
  if (ldv_state_variable_10 == 2) {
    bcsp_flush(bcsp_group0);
    ldv_state_variable_10 = 2;
  } else {
  }
  goto ldv_51620;
  case 3: ;
  if (ldv_state_variable_10 == 2) {
    ldv_retval_14 = bcsp_close(bcsp_group0);
    if (ldv_retval_14 == 0) {
      ldv_state_variable_10 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
  } else {
  }
  goto ldv_51620;
  case 4: ;
  if (ldv_state_variable_10 == 1) {
    bcsp_dequeue(bcsp_group0);
    ldv_state_variable_10 = 1;
  } else {
  }
  if (ldv_state_variable_10 == 2) {
    bcsp_dequeue(bcsp_group0);
    ldv_state_variable_10 = 2;
  } else {
  }
  goto ldv_51620;
  case 5: ;
  if (ldv_state_variable_10 == 1) {
    ldv_retval_13 = bcsp_open(bcsp_group0);
    if (ldv_retval_13 == 0) {
      ldv_state_variable_10 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
  } else {
  }
  goto ldv_51620;
  default:
  ldv_stop();
  }
  ldv_51620: ;
  return;
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags )
{
  {
  ldv_spin_unlock();
  ldv_spin_unlock_irqrestore_118(lock, flags);
  return;
}
}
bool ldv_queue_work_on_121(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_3(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_122(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___3 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_3(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_123(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_3(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_124(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_3(2);
  return;
}
}
bool ldv_queue_delayed_work_on_125(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___5 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_3(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
int ldv_pskb_expand_head_137(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  return __VERIFIER_nondet_int();
}
}
struct sk_buff *ldv_skb_clone_139(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv_skb_copy_141(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_142(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_143(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_144(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
int ldv_pskb_expand_head_145(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  return __VERIFIER_nondet_int();
}
}
int ldv_pskb_expand_head_146(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  return __VERIFIER_nondet_int();
}
}
struct sk_buff *ldv_skb_clone_147(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
bool ldv_cancel_delayed_work_148(struct delayed_work *ldv_func_arg1 )
{
  ldv_func_ret_type___6 ldv_func_res ;
  bool tmp ;
  {
  tmp = cancel_delayed_work(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_work_3(& ldv_func_arg1->work);
  return (ldv_func_res);
}
}
bool ldv_cancel_delayed_work_149(struct delayed_work *ldv_func_arg1 )
{
  ldv_func_ret_type___7 ldv_func_res ;
  bool tmp ;
  {
  tmp = cancel_delayed_work(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_work_3(& ldv_func_arg1->work);
  return (ldv_func_res);
}
}
bool ldv_cancel_delayed_work_150(struct delayed_work *ldv_func_arg1 )
{
  ldv_func_ret_type___8 ldv_func_res ;
  bool tmp ;
  {
  tmp = cancel_delayed_work(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_work_3(& ldv_func_arg1->work);
  return (ldv_func_res);
}
}
int ldv_mod_timer_151(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  ldv_func_ret_type___10 ldv_func_res ;
  int tmp ;
  {
  tmp = mod_timer(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  activate_pending_timer_4(ldv_func_arg1, ldv_func_arg2, 1);
  return (ldv_func_res);
}
}
int ldv_del_timer_152(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___11 ldv_func_res ;
  int tmp ;
  {
  tmp = del_timer(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_suitable_timer_4(ldv_func_arg1);
  return (ldv_func_res);
}
}
int ldv_del_timer_sync_153(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___12 ldv_func_res ;
  int tmp ;
  {
  tmp = del_timer_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_suitable_timer_4(ldv_func_arg1);
  return (ldv_func_res);
}
}
__inline static long ldv__builtin_expect(long exp , long c ) ;
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags ) ;
bool ldv_queue_work_on_179(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_181(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_180(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_183(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_182(struct workqueue_struct *ldv_func_arg1 ) ;
bool ldv_cancel_delayed_work_206(struct delayed_work *ldv_func_arg1 ) ;
bool ldv_cancel_delayed_work_207(struct delayed_work *ldv_func_arg1 ) ;
bool ldv_cancel_delayed_work_208(struct delayed_work *ldv_func_arg1 ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
__inline static struct sk_buff *alloc_skb(unsigned int size , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_197(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_205(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_copy_199(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
int ldv_pskb_expand_head_195(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_203(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_204(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_200(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_201(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_202(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
__inline static struct sk_buff *bt_skb_alloc___1(unsigned int len , gfp_t how )
{
  struct sk_buff *skb ;
  {
  skb = alloc_skb(len + 8U, how);
  if ((unsigned long )skb != (unsigned long )((struct sk_buff *)0)) {
    skb_reserve(skb, 8);
    ((struct bt_skb_cb *)(& skb->cb))->incoming = 0U;
  } else {
  }
  return (skb);
}
}
__inline static struct hci_event_hdr *hci_event_hdr(struct sk_buff const *skb )
{
  {
  return ((struct hci_event_hdr *)skb->data);
}
}
__inline static struct hci_acl_hdr *hci_acl_hdr(struct sk_buff const *skb )
{
  {
  return ((struct hci_acl_hdr *)skb->data);
}
}
__inline static struct hci_sco_hdr *hci_sco_hdr(struct sk_buff const *skb )
{
  {
  return ((struct hci_sco_hdr *)skb->data);
}
}
static int send_hcill_cmd(u8 cmd , struct hci_uart *hu )
{
  int err ;
  struct sk_buff *skb ;
  struct ll_struct *ll ;
  struct hcill_cmd *hcill_packet ;
  struct _ddebug descriptor ;
  long tmp ;
  unsigned char *tmp___0 ;
  {
  err = 0;
  skb = (struct sk_buff *)0;
  ll = (struct ll_struct *)hu->priv;
  descriptor.modname = "hci_uart";
  descriptor.function = "send_hcill_cmd";
  descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/4072/dscv_tempdir/dscv/ri/43_2a/drivers/bluetooth/hci_ll.c";
  descriptor.format = "hu %p cmd 0x%x\n";
  descriptor.lineno = 100U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "hu %p cmd 0x%x\n", hu, (int )cmd);
  } else {
  }
  skb = bt_skb_alloc___1(1U, 32U);
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    bt_err("cannot allocate memory for HCILL packet\n");
    err = -12;
    goto out;
  } else {
  }
  tmp___0 = skb_put(skb, 1U);
  hcill_packet = (struct hcill_cmd *)tmp___0;
  hcill_packet->cmd = cmd;
  skb_queue_tail(& ll->txq, skb);
  out: ;
  return (err);
}
}
static int ll_open(struct hci_uart *hu )
{
  struct ll_struct *ll ;
  struct _ddebug descriptor ;
  long tmp ;
  void *tmp___0 ;
  struct lock_class_key __key ;
  {
  descriptor.modname = "hci_uart";
  descriptor.function = "ll_open";
  descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/4072/dscv_tempdir/dscv/ri/43_2a/drivers/bluetooth/hci_ll.c";
  descriptor.format = "hu %p\n";
  descriptor.lineno = 125U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "hu %p\n", hu);
  } else {
  }
  tmp___0 = kzalloc(296UL, 208U);
  ll = (struct ll_struct *)tmp___0;
  if ((unsigned long )ll == (unsigned long )((struct ll_struct *)0)) {
    return (-12);
  } else {
  }
  skb_queue_head_init(& ll->txq);
  skb_queue_head_init(& ll->tx_wait_q);
  spinlock_check(& ll->hcill_lock);
  __raw_spin_lock_init(& ll->hcill_lock.__annonCompField18.rlock, "&(&ll->hcill_lock)->rlock",
                       & __key);
  ll->hcill_state = 2UL;
  hu->priv = (void *)ll;
  return (0);
}
}
static int ll_flush(struct hci_uart *hu )
{
  struct ll_struct *ll ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  ll = (struct ll_struct *)hu->priv;
  descriptor.modname = "hci_uart";
  descriptor.function = "ll_flush";
  descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/4072/dscv_tempdir/dscv/ri/43_2a/drivers/bluetooth/hci_ll.c";
  descriptor.format = "hu %p\n";
  descriptor.lineno = 147U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "hu %p\n", hu);
  } else {
  }
  skb_queue_purge(& ll->tx_wait_q);
  skb_queue_purge(& ll->txq);
  return (0);
}
}
static int ll_close(struct hci_uart *hu )
{
  struct ll_struct *ll ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  ll = (struct ll_struct *)hu->priv;
  descriptor.modname = "hci_uart";
  descriptor.function = "ll_close";
  descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/4072/dscv_tempdir/dscv/ri/43_2a/drivers/bluetooth/hci_ll.c";
  descriptor.format = "hu %p\n";
  descriptor.lineno = 160U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "hu %p\n", hu);
  } else {
  }
  skb_queue_purge(& ll->tx_wait_q);
  skb_queue_purge(& ll->txq);
  kfree_skb(ll->rx_skb);
  hu->priv = (void *)0;
  kfree((void const *)ll);
  return (0);
}
}
static void __ll_do_awake(struct ll_struct *ll )
{
  struct sk_buff *skb ;
  {
  skb = (struct sk_buff *)0;
  goto ldv_51315;
  ldv_51314:
  skb_queue_tail(& ll->txq, skb);
  ldv_51315:
  skb = skb_dequeue(& ll->tx_wait_q);
  if ((unsigned long )skb != (unsigned long )((struct sk_buff *)0)) {
    goto ldv_51314;
  } else {
  }
  ll->hcill_state = 2UL;
  return;
}
}
static void ll_device_want_to_wakeup(struct hci_uart *hu )
{
  unsigned long flags ;
  struct ll_struct *ll ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  int tmp___1 ;
  {
  ll = (struct ll_struct *)hu->priv;
  descriptor.modname = "hci_uart";
  descriptor.function = "ll_device_want_to_wakeup";
  descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/4072/dscv_tempdir/dscv/ri/43_2a/drivers/bluetooth/hci_ll.c";
  descriptor.format = "hu %p\n";
  descriptor.lineno = 199U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "hu %p\n", hu);
  } else {
  }
  ldv_spin_lock();
  switch (ll->hcill_state) {
  case 1UL:
  descriptor___0.modname = "hci_uart";
  descriptor___0.function = "ll_device_want_to_wakeup";
  descriptor___0.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/4072/dscv_tempdir/dscv/ri/43_2a/drivers/bluetooth/hci_ll.c";
  descriptor___0.format = "dual wake-up-indication\n";
  descriptor___0.lineno = 216U;
  descriptor___0.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    __dynamic_pr_debug(& descriptor___0, "dual wake-up-indication\n");
  } else {
  }
  case 0UL:
  tmp___1 = send_hcill_cmd(51, hu);
  if (tmp___1 < 0) {
    bt_err("cannot acknowledge device wake up\n");
    goto out;
  } else {
  }
  goto ldv_51328;
  default:
  bt_err("received HCILL_WAKE_UP_IND in state %ld\n", ll->hcill_state);
  goto ldv_51328;
  }
  ldv_51328:
  __ll_do_awake(ll);
  out:
  spin_unlock_irqrestore(& ll->hcill_lock, flags);
  hci_uart_tx_wakeup(hu);
  return;
}
}
static void ll_device_want_to_sleep(struct hci_uart *hu )
{
  unsigned long flags ;
  struct ll_struct *ll ;
  struct _ddebug descriptor ;
  long tmp ;
  int tmp___0 ;
  {
  ll = (struct ll_struct *)hu->priv;
  descriptor.modname = "hci_uart";
  descriptor.function = "ll_device_want_to_sleep";
  descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/4072/dscv_tempdir/dscv/ri/43_2a/drivers/bluetooth/hci_ll.c";
  descriptor.format = "hu %p\n";
  descriptor.lineno = 249U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "hu %p\n", hu);
  } else {
  }
  ldv_spin_lock();
  if (ll->hcill_state != 2UL) {
    bt_err("ERR: HCILL_GO_TO_SLEEP_IND in state %ld\n", ll->hcill_state);
  } else {
  }
  tmp___0 = send_hcill_cmd(49, hu);
  if (tmp___0 < 0) {
    bt_err("cannot acknowledge device sleep\n");
    goto out;
  } else {
  }
  ll->hcill_state = 0UL;
  out:
  spin_unlock_irqrestore(& ll->hcill_lock, flags);
  hci_uart_tx_wakeup(hu);
  return;
}
}
static void ll_device_woke_up(struct hci_uart *hu )
{
  unsigned long flags ;
  struct ll_struct *ll ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  ll = (struct ll_struct *)hu->priv;
  descriptor.modname = "hci_uart";
  descriptor.function = "ll_device_woke_up";
  descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/4072/dscv_tempdir/dscv/ri/43_2a/drivers/bluetooth/hci_ll.c";
  descriptor.format = "hu %p\n";
  descriptor.lineno = 282U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "hu %p\n", hu);
  } else {
  }
  ldv_spin_lock();
  if (ll->hcill_state != 1UL) {
    bt_err("received HCILL_WAKE_UP_ACK in state %ld\n", ll->hcill_state);
  } else {
  }
  __ll_do_awake(ll);
  spin_unlock_irqrestore(& ll->hcill_lock, flags);
  hci_uart_tx_wakeup(hu);
  return;
}
}
static int ll_enqueue(struct hci_uart *hu , struct sk_buff *skb )
{
  unsigned long flags ;
  struct ll_struct *ll ;
  struct _ddebug descriptor ;
  long tmp ;
  unsigned char *tmp___0 ;
  struct _ddebug descriptor___0 ;
  long tmp___1 ;
  struct _ddebug descriptor___1 ;
  long tmp___2 ;
  int tmp___3 ;
  struct _ddebug descriptor___2 ;
  long tmp___4 ;
  {
  flags = 0UL;
  ll = (struct ll_struct *)hu->priv;
  descriptor.modname = "hci_uart";
  descriptor.function = "ll_enqueue";
  descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/4072/dscv_tempdir/dscv/ri/43_2a/drivers/bluetooth/hci_ll.c";
  descriptor.format = "hu %p skb %p\n";
  descriptor.lineno = 307U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "hu %p skb %p\n", hu, skb);
  } else {
  }
  tmp___0 = skb_push(skb, 1U);
  memcpy((void *)tmp___0, (void const *)(& ((struct bt_skb_cb *)(& skb->cb))->pkt_type),
           1UL);
  ldv_spin_lock();
  switch (ll->hcill_state) {
  case 2UL:
  descriptor___0.modname = "hci_uart";
  descriptor___0.function = "ll_enqueue";
  descriptor___0.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/4072/dscv_tempdir/dscv/ri/43_2a/drivers/bluetooth/hci_ll.c";
  descriptor___0.format = "device awake, sending normally\n";
  descriptor___0.lineno = 318U;
  descriptor___0.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    __dynamic_pr_debug(& descriptor___0, "device awake, sending normally\n");
  } else {
  }
  skb_queue_tail(& ll->txq, skb);
  goto ldv_51355;
  case 0UL:
  descriptor___1.modname = "hci_uart";
  descriptor___1.function = "ll_enqueue";
  descriptor___1.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/4072/dscv_tempdir/dscv/ri/43_2a/drivers/bluetooth/hci_ll.c";
  descriptor___1.format = "device asleep, waking up and queueing packet\n";
  descriptor___1.lineno = 322U;
  descriptor___1.flags = 0U;
  tmp___2 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  if (tmp___2 != 0L) {
    __dynamic_pr_debug(& descriptor___1, "device asleep, waking up and queueing packet\n");
  } else {
  }
  skb_queue_tail(& ll->tx_wait_q, skb);
  tmp___3 = send_hcill_cmd(50, hu);
  if (tmp___3 < 0) {
    bt_err("cannot wake up device\n");
    goto ldv_51355;
  } else {
  }
  ll->hcill_state = 1UL;
  goto ldv_51355;
  case 1UL:
  descriptor___2.modname = "hci_uart";
  descriptor___2.function = "ll_enqueue";
  descriptor___2.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/4072/dscv_tempdir/dscv/ri/43_2a/drivers/bluetooth/hci_ll.c";
  descriptor___2.format = "device waking up, queueing packet\n";
  descriptor___2.lineno = 333U;
  descriptor___2.flags = 0U;
  tmp___4 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
  if (tmp___4 != 0L) {
    __dynamic_pr_debug(& descriptor___2, "device waking up, queueing packet\n");
  } else {
  }
  skb_queue_tail(& ll->tx_wait_q, skb);
  goto ldv_51355;
  default:
  bt_err("illegal hcill state: %ld (losing packet)\n", ll->hcill_state);
  kfree_skb(skb);
  goto ldv_51355;
  }
  ldv_51355:
  spin_unlock_irqrestore(& ll->hcill_lock, flags);
  return (0);
}
}
__inline static int ll_check_data_len(struct hci_dev *hdev , struct ll_struct *ll ,
                                      int len )
{
  int room ;
  int tmp ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  {
  tmp = skb_tailroom((struct sk_buff const *)ll->rx_skb);
  room = tmp;
  descriptor.modname = "hci_uart";
  descriptor.function = "ll_check_data_len";
  descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/4072/dscv_tempdir/dscv/ri/43_2a/drivers/bluetooth/hci_ll.c";
  descriptor.format = "len %d room %d\n";
  descriptor.lineno = 352U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    __dynamic_pr_debug(& descriptor, "len %d room %d\n", len, room);
  } else {
  }
  if (len == 0) {
    hci_recv_frame(hdev, ll->rx_skb);
  } else
  if (len > room) {
    bt_err("Data length is too large\n");
    kfree_skb(ll->rx_skb);
  } else {
    ll->rx_state = 4UL;
    ll->rx_count = (unsigned long )len;
    return (len);
  }
  ll->rx_state = 0UL;
  ll->rx_skb = (struct sk_buff *)0;
  ll->rx_count = 0UL;
  return (0);
}
}
static int ll_recv(struct hci_uart *hu , void const *data , int count )
{
  struct ll_struct *ll ;
  char const *ptr ;
  struct hci_event_hdr *eh ;
  struct hci_acl_hdr *ah ;
  struct hci_sco_hdr *sh ;
  int len ;
  int type ;
  int dlen ;
  struct _ddebug descriptor ;
  long tmp ;
  unsigned int __min1 ;
  unsigned int __min2 ;
  unsigned char *tmp___0 ;
  struct _ddebug descriptor___0 ;
  long tmp___1 ;
  struct _ddebug descriptor___1 ;
  long tmp___2 ;
  struct _ddebug descriptor___2 ;
  long tmp___3 ;
  struct _ddebug descriptor___3 ;
  long tmp___4 ;
  struct _ddebug descriptor___4 ;
  long tmp___5 ;
  struct _ddebug descriptor___5 ;
  long tmp___6 ;
  struct _ddebug descriptor___6 ;
  long tmp___7 ;
  struct _ddebug descriptor___7 ;
  long tmp___8 ;
  struct _ddebug descriptor___8 ;
  long tmp___9 ;
  struct _ddebug descriptor___9 ;
  long tmp___10 ;
  {
  ll = (struct ll_struct *)hu->priv;
  descriptor.modname = "hci_uart";
  descriptor.function = "ll_recv";
  descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/4072/dscv_tempdir/dscv/ri/43_2a/drivers/bluetooth/hci_ll.c";
  descriptor.format = "hu %p count %d rx_state %ld rx_count %ld\n";
  descriptor.lineno = 382U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "hu %p count %d rx_state %ld rx_count %ld\n",
                       hu, count, ll->rx_state, ll->rx_count);
  } else {
  }
  ptr = (char const *)data;
  goto ldv_51387;
  ldv_51411: ;
  if (ll->rx_count != 0UL) {
    __min1 = (unsigned int )ll->rx_count;
    __min2 = (unsigned int )count;
    len = (int )(__min1 < __min2 ? __min1 : __min2);
    tmp___0 = skb_put(ll->rx_skb, (unsigned int )len);
    memcpy((void *)tmp___0, (void const *)ptr, (size_t )len);
    ll->rx_count = ll->rx_count - (unsigned long )len;
    count = count - len;
    ptr = ptr + (unsigned long )len;
    if (ll->rx_count != 0UL) {
      goto ldv_51387;
    } else {
    }
    switch (ll->rx_state) {
    case 4UL:
    descriptor___0.modname = "hci_uart";
    descriptor___0.function = "ll_recv";
    descriptor___0.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/4072/dscv_tempdir/dscv/ri/43_2a/drivers/bluetooth/hci_ll.c";
    descriptor___0.format = "Complete data\n";
    descriptor___0.lineno = 396U;
    descriptor___0.flags = 0U;
    tmp___1 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___1 != 0L) {
      __dynamic_pr_debug(& descriptor___0, "Complete data\n");
    } else {
    }
    hci_recv_frame(hu->hdev, ll->rx_skb);
    ll->rx_state = 0UL;
    ll->rx_skb = (struct sk_buff *)0;
    goto ldv_51387;
    case 1UL:
    eh = hci_event_hdr((struct sk_buff const *)ll->rx_skb);
    descriptor___1.modname = "hci_uart";
    descriptor___1.function = "ll_recv";
    descriptor___1.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/4072/dscv_tempdir/dscv/ri/43_2a/drivers/bluetooth/hci_ll.c";
    descriptor___1.format = "Event header: evt 0x%2.2x plen %d\n";
    descriptor___1.lineno = 406U;
    descriptor___1.flags = 0U;
    tmp___2 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    if (tmp___2 != 0L) {
      __dynamic_pr_debug(& descriptor___1, "Event header: evt 0x%2.2x plen %d\n",
                         (int )eh->evt, (int )eh->plen);
    } else {
    }
    ll_check_data_len(hu->hdev, ll, (int )eh->plen);
    goto ldv_51387;
    case 2UL:
    ah = hci_acl_hdr((struct sk_buff const *)ll->rx_skb);
    dlen = (int )ah->dlen;
    descriptor___2.modname = "hci_uart";
    descriptor___2.function = "ll_recv";
    descriptor___2.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/4072/dscv_tempdir/dscv/ri/43_2a/drivers/bluetooth/hci_ll.c";
    descriptor___2.format = "ACL header: dlen %d\n";
    descriptor___2.lineno = 415U;
    descriptor___2.flags = 0U;
    tmp___3 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
    if (tmp___3 != 0L) {
      __dynamic_pr_debug(& descriptor___2, "ACL header: dlen %d\n", dlen);
    } else {
    }
    ll_check_data_len(hu->hdev, ll, dlen);
    goto ldv_51387;
    case 3UL:
    sh = hci_sco_hdr((struct sk_buff const *)ll->rx_skb);
    descriptor___3.modname = "hci_uart";
    descriptor___3.function = "ll_recv";
    descriptor___3.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/4072/dscv_tempdir/dscv/ri/43_2a/drivers/bluetooth/hci_ll.c";
    descriptor___3.format = "SCO header: dlen %d\n";
    descriptor___3.lineno = 423U;
    descriptor___3.flags = 0U;
    tmp___4 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
    if (tmp___4 != 0L) {
      __dynamic_pr_debug(& descriptor___3, "SCO header: dlen %d\n", (int )sh->dlen);
    } else {
    }
    ll_check_data_len(hu->hdev, ll, (int )sh->dlen);
    goto ldv_51387;
    }
  } else {
  }
  switch ((int )*ptr) {
  case 4:
  descriptor___4.modname = "hci_uart";
  descriptor___4.function = "ll_recv";
  descriptor___4.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/4072/dscv_tempdir/dscv/ri/43_2a/drivers/bluetooth/hci_ll.c";
  descriptor___4.format = "Event packet\n";
  descriptor___4.lineno = 433U;
  descriptor___4.flags = 0U;
  tmp___5 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
  if (tmp___5 != 0L) {
    __dynamic_pr_debug(& descriptor___4, "Event packet\n");
  } else {
  }
  ll->rx_state = 1UL;
  ll->rx_count = 2UL;
  type = 4;
  goto ldv_51398;
  case 2:
  descriptor___5.modname = "hci_uart";
  descriptor___5.function = "ll_recv";
  descriptor___5.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/4072/dscv_tempdir/dscv/ri/43_2a/drivers/bluetooth/hci_ll.c";
  descriptor___5.format = "ACL packet\n";
  descriptor___5.lineno = 440U;
  descriptor___5.flags = 0U;
  tmp___6 = ldv__builtin_expect((long )descriptor___5.flags & 1L, 0L);
  if (tmp___6 != 0L) {
    __dynamic_pr_debug(& descriptor___5, "ACL packet\n");
  } else {
  }
  ll->rx_state = 2UL;
  ll->rx_count = 4UL;
  type = 2;
  goto ldv_51398;
  case 3:
  descriptor___6.modname = "hci_uart";
  descriptor___6.function = "ll_recv";
  descriptor___6.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/4072/dscv_tempdir/dscv/ri/43_2a/drivers/bluetooth/hci_ll.c";
  descriptor___6.format = "SCO packet\n";
  descriptor___6.lineno = 447U;
  descriptor___6.flags = 0U;
  tmp___7 = ldv__builtin_expect((long )descriptor___6.flags & 1L, 0L);
  if (tmp___7 != 0L) {
    __dynamic_pr_debug(& descriptor___6, "SCO packet\n");
  } else {
  }
  ll->rx_state = 3UL;
  ll->rx_count = 3UL;
  type = 3;
  goto ldv_51398;
  case 48:
  descriptor___7.modname = "hci_uart";
  descriptor___7.function = "ll_recv";
  descriptor___7.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/4072/dscv_tempdir/dscv/ri/43_2a/drivers/bluetooth/hci_ll.c";
  descriptor___7.format = "HCILL_GO_TO_SLEEP_IND packet\n";
  descriptor___7.lineno = 455U;
  descriptor___7.flags = 0U;
  tmp___8 = ldv__builtin_expect((long )descriptor___7.flags & 1L, 0L);
  if (tmp___8 != 0L) {
    __dynamic_pr_debug(& descriptor___7, "HCILL_GO_TO_SLEEP_IND packet\n");
  } else {
  }
  ll_device_want_to_sleep(hu);
  ptr = ptr + 1;
  count = count - 1;
  goto ldv_51387;
  case 49:
  bt_err("received HCILL_GO_TO_SLEEP_ACK (in state %ld)\n", ll->hcill_state);
  ptr = ptr + 1;
  count = count - 1;
  goto ldv_51387;
  case 50:
  descriptor___8.modname = "hci_uart";
  descriptor___8.function = "ll_recv";
  descriptor___8.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/4072/dscv_tempdir/dscv/ri/43_2a/drivers/bluetooth/hci_ll.c";
  descriptor___8.format = "HCILL_WAKE_UP_IND packet\n";
  descriptor___8.lineno = 467U;
  descriptor___8.flags = 0U;
  tmp___9 = ldv__builtin_expect((long )descriptor___8.flags & 1L, 0L);
  if (tmp___9 != 0L) {
    __dynamic_pr_debug(& descriptor___8, "HCILL_WAKE_UP_IND packet\n");
  } else {
  }
  ll_device_want_to_wakeup(hu);
  ptr = ptr + 1;
  count = count - 1;
  goto ldv_51387;
  case 51:
  descriptor___9.modname = "hci_uart";
  descriptor___9.function = "ll_recv";
  descriptor___9.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/4072/dscv_tempdir/dscv/ri/43_2a/drivers/bluetooth/hci_ll.c";
  descriptor___9.format = "HCILL_WAKE_UP_ACK packet\n";
  descriptor___9.lineno = 473U;
  descriptor___9.flags = 0U;
  tmp___10 = ldv__builtin_expect((long )descriptor___9.flags & 1L, 0L);
  if (tmp___10 != 0L) {
    __dynamic_pr_debug(& descriptor___9, "HCILL_WAKE_UP_ACK packet\n");
  } else {
  }
  ll_device_woke_up(hu);
  ptr = ptr + 1;
  count = count - 1;
  goto ldv_51387;
  default:
  bt_err("Unknown HCI packet type %2.2x\n", (int )((unsigned char )*ptr));
  (hu->hdev)->stat.err_rx = (hu->hdev)->stat.err_rx + 1U;
  ptr = ptr + 1;
  count = count - 1;
  goto ldv_51387;
  }
  ldv_51398:
  ptr = ptr + 1;
  count = count - 1;
  ll->rx_skb = bt_skb_alloc___1(1028U, 32U);
  if ((unsigned long )ll->rx_skb == (unsigned long )((struct sk_buff *)0)) {
    bt_err("Can\'t allocate mem for new packet\n");
    ll->rx_state = 0UL;
    ll->rx_count = 0UL;
    return (-12);
  } else {
  }
  ((struct bt_skb_cb *)(& (ll->rx_skb)->cb))->pkt_type = (__u8 )type;
  ldv_51387: ;
  if (count != 0) {
    goto ldv_51411;
  } else {
  }
  return (count);
}
}
static struct sk_buff *ll_dequeue(struct hci_uart *hu )
{
  struct ll_struct *ll ;
  struct sk_buff *tmp ;
  {
  ll = (struct ll_struct *)hu->priv;
  tmp = skb_dequeue(& ll->txq);
  return (tmp);
}
}
static struct hci_uart_proto const llp =
     {4U, "LL", 0U, 0U, & ll_open, & ll_close, & ll_flush, 0, 0, & ll_recv, & ll_enqueue,
    & ll_dequeue};
int ll_init(void)
{
  int tmp ;
  {
  tmp = hci_uart_register_proto(& llp);
  return (tmp);
}
}
int ll_deinit(void)
{
  int tmp ;
  {
  tmp = hci_uart_unregister_proto(& llp);
  return (tmp);
}
}
int ldv_retval_8 ;
int ldv_retval_7 ;
void ldv_initialize_hci_uart_proto_9(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(304UL);
  llp_group0 = (struct hci_uart *)tmp;
  return;
}
}
void ldv_main_exported_9(void)
{
  struct sk_buff *ldvarg12 ;
  void *tmp ;
  int ldvarg10 ;
  void *ldvarg11 ;
  void *tmp___0 ;
  int tmp___1 ;
  {
  tmp = ldv_init_zalloc(232UL);
  ldvarg12 = (struct sk_buff *)tmp;
  tmp___0 = ldv_init_zalloc(1UL);
  ldvarg11 = tmp___0;
  ldv_memset((void *)(& ldvarg10), 0, 4UL);
  tmp___1 = __VERIFIER_nondet_int();
  switch (tmp___1) {
  case 0: ;
  if (ldv_state_variable_9 == 1) {
    ll_enqueue(llp_group0, ldvarg12);
    ldv_state_variable_9 = 1;
  } else {
  }
  if (ldv_state_variable_9 == 2) {
    ll_enqueue(llp_group0, ldvarg12);
    ldv_state_variable_9 = 2;
  } else {
  }
  goto ldv_51436;
  case 1: ;
  if (ldv_state_variable_9 == 1) {
    ll_recv(llp_group0, (void const *)ldvarg11, ldvarg10);
    ldv_state_variable_9 = 1;
  } else {
  }
  if (ldv_state_variable_9 == 2) {
    ll_recv(llp_group0, (void const *)ldvarg11, ldvarg10);
    ldv_state_variable_9 = 2;
  } else {
  }
  goto ldv_51436;
  case 2: ;
  if (ldv_state_variable_9 == 1) {
    ll_flush(llp_group0);
    ldv_state_variable_9 = 1;
  } else {
  }
  if (ldv_state_variable_9 == 2) {
    ll_flush(llp_group0);
    ldv_state_variable_9 = 2;
  } else {
  }
  goto ldv_51436;
  case 3: ;
  if (ldv_state_variable_9 == 2) {
    ldv_retval_8 = ll_close(llp_group0);
    if (ldv_retval_8 == 0) {
      ldv_state_variable_9 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
  } else {
  }
  goto ldv_51436;
  case 4: ;
  if (ldv_state_variable_9 == 1) {
    ll_dequeue(llp_group0);
    ldv_state_variable_9 = 1;
  } else {
  }
  if (ldv_state_variable_9 == 2) {
    ll_dequeue(llp_group0);
    ldv_state_variable_9 = 2;
  } else {
  }
  goto ldv_51436;
  case 5: ;
  if (ldv_state_variable_9 == 1) {
    ldv_retval_7 = ll_open(llp_group0);
    if (ldv_retval_7 == 0) {
      ldv_state_variable_9 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
  } else {
  }
  goto ldv_51436;
  default:
  ldv_stop();
  }
  ldv_51436: ;
  return;
}
}
bool ldv_queue_work_on_179(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_3(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_180(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___3 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_3(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_181(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_3(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_182(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_3(2);
  return;
}
}
bool ldv_queue_delayed_work_on_183(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___5 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_3(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
int ldv_pskb_expand_head_195(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  return __VERIFIER_nondet_int();
}
}
struct sk_buff *ldv_skb_clone_197(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv_skb_copy_199(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_200(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_201(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_202(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
int ldv_pskb_expand_head_203(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  return __VERIFIER_nondet_int();
}
}
int ldv_pskb_expand_head_204(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  return __VERIFIER_nondet_int();
}
}
struct sk_buff *ldv_skb_clone_205(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
bool ldv_cancel_delayed_work_206(struct delayed_work *ldv_func_arg1 )
{
  ldv_func_ret_type___6 ldv_func_res ;
  bool tmp ;
  {
  tmp = cancel_delayed_work(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_work_3(& ldv_func_arg1->work);
  return (ldv_func_res);
}
}
bool ldv_cancel_delayed_work_207(struct delayed_work *ldv_func_arg1 )
{
  ldv_func_ret_type___7 ldv_func_res ;
  bool tmp ;
  {
  tmp = cancel_delayed_work(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_work_3(& ldv_func_arg1->work);
  return (ldv_func_res);
}
}
bool ldv_cancel_delayed_work_208(struct delayed_work *ldv_func_arg1 )
{
  ldv_func_ret_type___8 ldv_func_res ;
  bool tmp ;
  {
  tmp = cancel_delayed_work(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_work_3(& ldv_func_arg1->work);
  return (ldv_func_res);
}
}
__inline static long ldv__builtin_expect(long exp , long c ) ;
__inline static long PTR_ERR(void const *ptr ) ;
__inline static bool IS_ERR(void const *ptr ) ;
bool ldv_queue_work_on_231(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_233(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_232(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_235(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_234(struct workqueue_struct *ldv_func_arg1 ) ;
bool ldv_cancel_work_sync_261(struct work_struct *ldv_func_arg1 ) ;
bool ldv_cancel_delayed_work_258(struct delayed_work *ldv_func_arg1 ) ;
bool ldv_cancel_delayed_work_259(struct delayed_work *ldv_func_arg1 ) ;
bool ldv_cancel_delayed_work_260(struct delayed_work *ldv_func_arg1 ) ;
__inline static bool queue_work___0(struct workqueue_struct *wq , struct work_struct *work )
{
  bool tmp ;
  {
  tmp = ldv_queue_work_on_231(8192, wq, work);
  return (tmp);
}
}
__inline static bool schedule_work___0(struct work_struct *work )
{
  bool tmp ;
  {
  tmp = queue_work___0(system_wq, work);
  return (tmp);
}
}
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
void call_and_disable_work_3(struct work_struct *work ) ;
void invoke_work_3(void) ;
struct sk_buff *ldv_skb_clone_249(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_257(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_copy_251(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
int ldv_pskb_expand_head_247(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_255(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_256(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_252(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_253(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_254(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
extern void __const_udelay(unsigned long ) ;
static int ath_wakeup_ar3k(struct tty_struct *tty )
{
  int status ;
  int tmp ;
  unsigned long __ms ;
  unsigned long tmp___0 ;
  unsigned long __ms___0 ;
  unsigned long tmp___1 ;
  {
  tmp = (*(((tty->driver)->ops)->tiocmget))(tty);
  status = tmp;
  if ((status & 32) != 0) {
    return (status);
  } else {
  }
  (*(((tty->driver)->ops)->tiocmget))(tty);
  (*(((tty->driver)->ops)->tiocmset))(tty, 0U, 4U);
  __ms = 20UL;
  goto ldv_51121;
  ldv_51120:
  __const_udelay(4295000UL);
  ldv_51121:
  tmp___0 = __ms;
  __ms = __ms - 1UL;
  if (tmp___0 != 0UL) {
    goto ldv_51120;
  } else {
  }
  (*(((tty->driver)->ops)->tiocmget))(tty);
  (*(((tty->driver)->ops)->tiocmset))(tty, 4U, 0U);
  __ms___0 = 20UL;
  goto ldv_51125;
  ldv_51124:
  __const_udelay(4295000UL);
  ldv_51125:
  tmp___1 = __ms___0;
  __ms___0 = __ms___0 - 1UL;
  if (tmp___1 != 0UL) {
    goto ldv_51124;
  } else {
  }
  status = (*(((tty->driver)->ops)->tiocmget))(tty);
  return (status);
}
}
static void ath_hci_uart_work(struct work_struct *work )
{
  int status ;
  struct ath_struct *ath ;
  struct hci_uart *hu ;
  struct tty_struct *tty ;
  struct work_struct const *__mptr ;
  {
  __mptr = (struct work_struct const *)work;
  ath = (struct ath_struct *)__mptr + 0xffffffffffffff88UL;
  hu = ath->hu;
  tty = hu->tty;
  if (ath->cur_sleep != 0U) {
    status = ath_wakeup_ar3k(tty);
    if ((status & 32) == 0) {
      return;
    } else {
    }
  } else {
  }
  clear_bit(1L, (unsigned long volatile *)(& hu->tx_state));
  hci_uart_tx_wakeup(hu);
  return;
}
}
static int ath_open(struct hci_uart *hu )
{
  struct ath_struct *ath ;
  struct _ddebug descriptor ;
  long tmp ;
  void *tmp___0 ;
  struct lock_class_key __key ;
  atomic_long_t __constr_expr_0 ;
  {
  descriptor.modname = "hci_uart";
  descriptor.function = "ath_open";
  descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/4072/dscv_tempdir/dscv/ri/43_2a/drivers/bluetooth/hci_ath.c";
  descriptor.format = "hu %p\n";
  descriptor.lineno = 102U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "hu %p\n", hu);
  } else {
  }
  tmp___0 = kzalloc(200UL, 208U);
  ath = (struct ath_struct *)tmp___0;
  if ((unsigned long )ath == (unsigned long )((struct ath_struct *)0)) {
    return (-12);
  } else {
  }
  skb_queue_head_init(& ath->txq);
  hu->priv = (void *)ath;
  ath->hu = hu;
  __init_work(& ath->ctxtsw, 0);
  __constr_expr_0.counter = 137438953408L;
  ath->ctxtsw.data = __constr_expr_0;
  lockdep_init_map(& ath->ctxtsw.lockdep_map, "(&ath->ctxtsw)", & __key, 0);
  INIT_LIST_HEAD(& ath->ctxtsw.entry);
  ath->ctxtsw.func = & ath_hci_uart_work;
  return (0);
}
}
static int ath_close(struct hci_uart *hu )
{
  struct ath_struct *ath ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  ath = (struct ath_struct *)hu->priv;
  descriptor.modname = "hci_uart";
  descriptor.function = "ath_close";
  descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/4072/dscv_tempdir/dscv/ri/43_2a/drivers/bluetooth/hci_ath.c";
  descriptor.format = "hu %p\n";
  descriptor.lineno = 122U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "hu %p\n", hu);
  } else {
  }
  skb_queue_purge(& ath->txq);
  kfree_skb(ath->rx_skb);
  ldv_cancel_work_sync_261(& ath->ctxtsw);
  hu->priv = (void *)0;
  kfree((void const *)ath);
  return (0);
}
}
static int ath_flush(struct hci_uart *hu )
{
  struct ath_struct *ath ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  ath = (struct ath_struct *)hu->priv;
  descriptor.modname = "hci_uart";
  descriptor.function = "ath_flush";
  descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/4072/dscv_tempdir/dscv/ri/43_2a/drivers/bluetooth/hci_ath.c";
  descriptor.format = "hu %p\n";
  descriptor.lineno = 140U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "hu %p\n", hu);
  } else {
  }
  skb_queue_purge(& ath->txq);
  return (0);
}
}
static int ath_set_bdaddr(struct hci_dev *hdev , bdaddr_t const *bdaddr )
{
  struct sk_buff *skb ;
  u8 buf[10U] ;
  int err ;
  unsigned long tmp ;
  long tmp___0 ;
  bool tmp___1 ;
  {
  buf[0] = 1U;
  buf[1] = 1U;
  buf[2] = 0U;
  buf[3] = 6U;
  memcpy((void *)(& buf) + 4U, (void const *)bdaddr, 6UL);
  tmp = msecs_to_jiffies(10000U);
  skb = __hci_cmd_sync(hdev, 64523, 10U, (void const *)(& buf), (u32 )tmp);
  tmp___1 = IS_ERR((void const *)skb);
  if ((int )tmp___1) {
    tmp___0 = PTR_ERR((void const *)skb);
    err = (int )tmp___0;
    bt_err("%s: Change address command failed (%d)\n", (char *)(& hdev->name), err);
    return (err);
  } else {
  }
  kfree_skb(skb);
  return (0);
}
}
static int ath_setup(struct hci_uart *hu )
{
  struct _ddebug descriptor ;
  long tmp ;
  {
  descriptor.modname = "hci_uart";
  descriptor.function = "ath_setup";
  descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/4072/dscv_tempdir/dscv/ri/43_2a/drivers/bluetooth/hci_ath.c";
  descriptor.format = "hu %p\n";
  descriptor.lineno = 173U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "hu %p\n", hu);
  } else {
  }
  (hu->hdev)->set_bdaddr = & ath_set_bdaddr;
  return (0);
}
}
static struct h4_recv_pkt const ath_recv_pkts[3U] = { {2U, 4U, 2U, 2U, 1028U, & hci_recv_frame},
        {3U, 3U, 2U, 1U, 255U, & hci_recv_frame},
        {4U, 2U, 1U, 1U, 260U, & hci_recv_frame}};
static int ath_recv(struct hci_uart *hu , void const *data , int count )
{
  struct ath_struct *ath ;
  int err ;
  long tmp ;
  bool tmp___0 ;
  {
  ath = (struct ath_struct *)hu->priv;
  ath->rx_skb = h4_recv_buf(hu->hdev, ath->rx_skb, (unsigned char const *)data,
                            count, (struct h4_recv_pkt const *)(& ath_recv_pkts),
                            3);
  tmp___0 = IS_ERR((void const *)ath->rx_skb);
  if ((int )tmp___0) {
    tmp = PTR_ERR((void const *)ath->rx_skb);
    err = (int )tmp;
    bt_err("%s: Frame reassembly failed (%d)\n", (char *)(& (hu->hdev)->name), err);
    ath->rx_skb = (struct sk_buff *)0;
    return (err);
  } else {
  }
  return (count);
}
}
static int ath_enqueue(struct hci_uart *hu , struct sk_buff *skb )
{
  struct ath_struct *ath ;
  struct hci_command_hdr *hdr ;
  struct _ddebug descriptor ;
  long tmp ;
  unsigned char *tmp___0 ;
  {
  ath = (struct ath_struct *)hu->priv;
  if ((unsigned int )((struct bt_skb_cb *)(& skb->cb))->pkt_type == 3U) {
    kfree_skb(skb);
    return (0);
  } else {
  }
  if ((unsigned int )((struct bt_skb_cb *)(& skb->cb))->pkt_type == 1U) {
    hdr = (struct hci_command_hdr *)skb->data;
    if ((unsigned int )hdr->opcode == 64516U) {
      ath->cur_sleep = (unsigned int )*(skb->data + 3UL);
    } else {
    }
  } else {
  }
  descriptor.modname = "hci_uart";
  descriptor.function = "ath_enqueue";
  descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/4072/dscv_tempdir/dscv/ri/43_2a/drivers/bluetooth/hci_ath.c";
  descriptor.format = "hu %p skb %p\n";
  descriptor.lineno = 223U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "hu %p skb %p\n", hu, skb);
  } else {
  }
  tmp___0 = skb_push(skb, 1U);
  memmove((void *)tmp___0, (void const *)(& ((struct bt_skb_cb *)(& skb->cb))->pkt_type),
           1UL);
  skb_queue_tail(& ath->txq, skb);
  set_bit(1L, (unsigned long volatile *)(& hu->tx_state));
  schedule_work___0(& ath->ctxtsw);
  return (0);
}
}
static struct sk_buff *ath_dequeue(struct hci_uart *hu )
{
  struct ath_struct *ath ;
  struct sk_buff *tmp ;
  {
  ath = (struct ath_struct *)hu->priv;
  tmp = skb_dequeue(& ath->txq);
  return (tmp);
}
}
static struct hci_uart_proto const athp =
     {5U, "ATH3K", 0U, 0U, & ath_open, & ath_close, & ath_flush, & ath_setup, 0, & ath_recv,
    & ath_enqueue, & ath_dequeue};
int ath_init(void)
{
  int tmp ;
  {
  tmp = hci_uart_register_proto(& athp);
  return (tmp);
}
}
int ath_deinit(void)
{
  int tmp ;
  {
  tmp = hci_uart_unregister_proto(& athp);
  return (tmp);
}
}
extern int ldv_disconnect_8(void) ;
extern int ldv_release_8(void) ;
int ldv_retval_11 ;
extern int ldv_start_8(void) ;
int ldv_retval_10 ;
int ldv_retval_9 ;
extern int ldv_stop_8(void) ;
void work_init_3(void)
{
  {
  ldv_work_3_0 = 0;
  ldv_work_3_1 = 0;
  ldv_work_3_2 = 0;
  ldv_work_3_3 = 0;
  return;
}
}
void activate_work_3(struct work_struct *work , int state )
{
  {
  if (ldv_work_3_0 == 0) {
    ldv_work_struct_3_0 = work;
    ldv_work_3_0 = state;
    return;
  } else {
  }
  if (ldv_work_3_1 == 0) {
    ldv_work_struct_3_1 = work;
    ldv_work_3_1 = state;
    return;
  } else {
  }
  if (ldv_work_3_2 == 0) {
    ldv_work_struct_3_2 = work;
    ldv_work_3_2 = state;
    return;
  } else {
  }
  if (ldv_work_3_3 == 0) {
    ldv_work_struct_3_3 = work;
    ldv_work_3_3 = state;
    return;
  } else {
  }
  return;
}
}
void call_and_disable_work_3(struct work_struct *work )
{
  {
  if ((ldv_work_3_0 == 2 || ldv_work_3_0 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_3_0) {
    ath_hci_uart_work(work);
    ldv_work_3_0 = 1;
    return;
  } else {
  }
  if ((ldv_work_3_1 == 2 || ldv_work_3_1 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_3_1) {
    ath_hci_uart_work(work);
    ldv_work_3_1 = 1;
    return;
  } else {
  }
  if ((ldv_work_3_2 == 2 || ldv_work_3_2 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_3_2) {
    ath_hci_uart_work(work);
    ldv_work_3_2 = 1;
    return;
  } else {
  }
  if ((ldv_work_3_3 == 2 || ldv_work_3_3 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_3_3) {
    ath_hci_uart_work(work);
    ldv_work_3_3 = 1;
    return;
  } else {
  }
  return;
}
}
void disable_work_3(struct work_struct *work )
{
  {
  if ((ldv_work_3_0 == 3 || ldv_work_3_0 == 2) && (unsigned long )ldv_work_struct_3_0 == (unsigned long )work) {
    ldv_work_3_0 = 1;
  } else {
  }
  if ((ldv_work_3_1 == 3 || ldv_work_3_1 == 2) && (unsigned long )ldv_work_struct_3_1 == (unsigned long )work) {
    ldv_work_3_1 = 1;
  } else {
  }
  if ((ldv_work_3_2 == 3 || ldv_work_3_2 == 2) && (unsigned long )ldv_work_struct_3_2 == (unsigned long )work) {
    ldv_work_3_2 = 1;
  } else {
  }
  if ((ldv_work_3_3 == 3 || ldv_work_3_3 == 2) && (unsigned long )ldv_work_struct_3_3 == (unsigned long )work) {
    ldv_work_3_3 = 1;
  } else {
  }
  return;
}
}
void ldv_initialize_hci_uart_proto_8(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(304UL);
  athp_group0 = (struct hci_uart *)tmp;
  return;
}
}
void invoke_work_3(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_work_3_0 == 2 || ldv_work_3_0 == 3) {
    ldv_work_3_0 = 4;
    ath_hci_uart_work(ldv_work_struct_3_0);
    ldv_work_3_0 = 1;
  } else {
  }
  goto ldv_51232;
  case 1: ;
  if (ldv_work_3_1 == 2 || ldv_work_3_1 == 3) {
    ldv_work_3_1 = 4;
    ath_hci_uart_work(ldv_work_struct_3_0);
    ldv_work_3_1 = 1;
  } else {
  }
  goto ldv_51232;
  case 2: ;
  if (ldv_work_3_2 == 2 || ldv_work_3_2 == 3) {
    ldv_work_3_2 = 4;
    ath_hci_uart_work(ldv_work_struct_3_0);
    ldv_work_3_2 = 1;
  } else {
  }
  goto ldv_51232;
  case 3: ;
  if (ldv_work_3_3 == 2 || ldv_work_3_3 == 3) {
    ldv_work_3_3 = 4;
    ath_hci_uart_work(ldv_work_struct_3_0);
    ldv_work_3_3 = 1;
  } else {
  }
  goto ldv_51232;
  default:
  ldv_stop();
  }
  ldv_51232: ;
  return;
}
}
void call_and_disable_all_3(int state )
{
  {
  if (ldv_work_3_0 == state) {
    call_and_disable_work_3(ldv_work_struct_3_0);
  } else {
  }
  if (ldv_work_3_1 == state) {
    call_and_disable_work_3(ldv_work_struct_3_1);
  } else {
  }
  if (ldv_work_3_2 == state) {
    call_and_disable_work_3(ldv_work_struct_3_2);
  } else {
  }
  if (ldv_work_3_3 == state) {
    call_and_disable_work_3(ldv_work_struct_3_3);
  } else {
  }
  return;
}
}
void ldv_main_exported_8(void)
{
  struct sk_buff *ldvarg15 ;
  void *tmp ;
  int ldvarg13 ;
  void *ldvarg14 ;
  void *tmp___0 ;
  int tmp___1 ;
  {
  tmp = ldv_init_zalloc(232UL);
  ldvarg15 = (struct sk_buff *)tmp;
  tmp___0 = ldv_init_zalloc(1UL);
  ldvarg14 = tmp___0;
  ldv_memset((void *)(& ldvarg13), 0, 4UL);
  tmp___1 = __VERIFIER_nondet_int();
  switch (tmp___1) {
  case 0: ;
  if (ldv_state_variable_8 == 4) {
    ath_enqueue(athp_group0, ldvarg15);
    ldv_state_variable_8 = 4;
  } else {
  }
  if (ldv_state_variable_8 == 1) {
    ath_enqueue(athp_group0, ldvarg15);
    ldv_state_variable_8 = 1;
  } else {
  }
  if (ldv_state_variable_8 == 3) {
    ath_enqueue(athp_group0, ldvarg15);
    ldv_state_variable_8 = 3;
  } else {
  }
  if (ldv_state_variable_8 == 2) {
    ath_enqueue(athp_group0, ldvarg15);
    ldv_state_variable_8 = 2;
  } else {
  }
  if (ldv_state_variable_8 == 5) {
    ath_enqueue(athp_group0, ldvarg15);
    ldv_state_variable_8 = 5;
  } else {
  }
  goto ldv_51247;
  case 1: ;
  if (ldv_state_variable_8 == 4) {
    ath_recv(athp_group0, (void const *)ldvarg14, ldvarg13);
    ldv_state_variable_8 = 4;
  } else {
  }
  if (ldv_state_variable_8 == 1) {
    ath_recv(athp_group0, (void const *)ldvarg14, ldvarg13);
    ldv_state_variable_8 = 1;
  } else {
  }
  if (ldv_state_variable_8 == 3) {
    ath_recv(athp_group0, (void const *)ldvarg14, ldvarg13);
    ldv_state_variable_8 = 3;
  } else {
  }
  if (ldv_state_variable_8 == 2) {
    ath_recv(athp_group0, (void const *)ldvarg14, ldvarg13);
    ldv_state_variable_8 = 2;
  } else {
  }
  if (ldv_state_variable_8 == 5) {
    ath_recv(athp_group0, (void const *)ldvarg14, ldvarg13);
    ldv_state_variable_8 = 5;
  } else {
  }
  goto ldv_51247;
  case 2: ;
  if (ldv_state_variable_8 == 4) {
    ath_flush(athp_group0);
    ldv_state_variable_8 = 4;
  } else {
  }
  if (ldv_state_variable_8 == 1) {
    ath_flush(athp_group0);
    ldv_state_variable_8 = 1;
  } else {
  }
  if (ldv_state_variable_8 == 3) {
    ath_flush(athp_group0);
    ldv_state_variable_8 = 3;
  } else {
  }
  if (ldv_state_variable_8 == 2) {
    ath_flush(athp_group0);
    ldv_state_variable_8 = 2;
  } else {
  }
  if (ldv_state_variable_8 == 5) {
    ath_flush(athp_group0);
    ldv_state_variable_8 = 5;
  } else {
  }
  goto ldv_51247;
  case 3: ;
  if (ldv_state_variable_8 == 1) {
    ldv_retval_11 = ath_setup(athp_group0);
    if (ldv_retval_11 == 0) {
      ldv_state_variable_8 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
  } else {
  }
  goto ldv_51247;
  case 4: ;
  if (ldv_state_variable_8 == 3) {
    ldv_retval_10 = ath_close(athp_group0);
    if (ldv_retval_10 == 0) {
      ldv_state_variable_8 = 2;
    } else {
    }
  } else {
  }
  goto ldv_51247;
  case 5: ;
  if (ldv_state_variable_8 == 4) {
    ath_dequeue(athp_group0);
    ldv_state_variable_8 = 4;
  } else {
  }
  if (ldv_state_variable_8 == 1) {
    ath_dequeue(athp_group0);
    ldv_state_variable_8 = 1;
  } else {
  }
  if (ldv_state_variable_8 == 3) {
    ath_dequeue(athp_group0);
    ldv_state_variable_8 = 3;
  } else {
  }
  if (ldv_state_variable_8 == 2) {
    ath_dequeue(athp_group0);
    ldv_state_variable_8 = 2;
  } else {
  }
  if (ldv_state_variable_8 == 5) {
    ath_dequeue(athp_group0);
    ldv_state_variable_8 = 5;
  } else {
  }
  goto ldv_51247;
  case 6: ;
  if (ldv_state_variable_8 == 2) {
    ldv_retval_9 = ath_open(athp_group0);
    if (ldv_retval_9 == 0) {
      ldv_state_variable_8 = 3;
    } else {
    }
  } else {
  }
  goto ldv_51247;
  case 7: ;
  if (ldv_state_variable_8 == 5) {
    ldv_stop_8();
    ldv_state_variable_8 = 3;
  } else {
  }
  goto ldv_51247;
  case 8: ;
  if (ldv_state_variable_8 == 3) {
    ldv_disconnect_8();
    ldv_state_variable_8 = 4;
  } else {
  }
  if (ldv_state_variable_8 == 2) {
    ldv_disconnect_8();
    ldv_state_variable_8 = 4;
  } else {
  }
  if (ldv_state_variable_8 == 5) {
    ldv_disconnect_8();
    ldv_state_variable_8 = 4;
  } else {
  }
  goto ldv_51247;
  case 9: ;
  if (ldv_state_variable_8 == 4) {
    ldv_release_8();
    ldv_state_variable_8 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  goto ldv_51247;
  case 10: ;
  if (ldv_state_variable_8 == 3) {
    ldv_start_8();
    ldv_state_variable_8 = 5;
  } else {
  }
  goto ldv_51247;
  default:
  ldv_stop();
  }
  ldv_51247: ;
  return;
}
}
bool ldv_queue_work_on_231(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_3(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_232(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___3 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_3(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_233(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_3(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_234(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_3(2);
  return;
}
}
bool ldv_queue_delayed_work_on_235(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___5 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_3(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
int ldv_pskb_expand_head_247(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  return __VERIFIER_nondet_int();
}
}
struct sk_buff *ldv_skb_clone_249(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv_skb_copy_251(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_252(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_253(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_254(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
int ldv_pskb_expand_head_255(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  return __VERIFIER_nondet_int();
}
}
int ldv_pskb_expand_head_256(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  return __VERIFIER_nondet_int();
}
}
struct sk_buff *ldv_skb_clone_257(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
bool ldv_cancel_delayed_work_258(struct delayed_work *ldv_func_arg1 )
{
  ldv_func_ret_type___6 ldv_func_res ;
  bool tmp ;
  {
  tmp = cancel_delayed_work(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_work_3(& ldv_func_arg1->work);
  return (ldv_func_res);
}
}
bool ldv_cancel_delayed_work_259(struct delayed_work *ldv_func_arg1 )
{
  ldv_func_ret_type___7 ldv_func_res ;
  bool tmp ;
  {
  tmp = cancel_delayed_work(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_work_3(& ldv_func_arg1->work);
  return (ldv_func_res);
}
}
bool ldv_cancel_delayed_work_260(struct delayed_work *ldv_func_arg1 )
{
  ldv_func_ret_type___8 ldv_func_res ;
  bool tmp ;
  {
  tmp = cancel_delayed_work(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_work_3(& ldv_func_arg1->work);
  return (ldv_func_res);
}
}
bool ldv_cancel_work_sync_261(struct work_struct *ldv_func_arg1 )
{
  ldv_func_ret_type___9 ldv_func_res ;
  bool tmp ;
  {
  tmp = cancel_work_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_work_3(ldv_func_arg1);
  return (ldv_func_res);
}
}
__inline static long ldv__builtin_expect(long exp , long c ) ;
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags ) ;
int ldv_del_timer_316(struct timer_list *ldv_func_arg1 ) ;
int ldv_del_timer_319(struct timer_list *ldv_func_arg1 ) ;
int ldv_mod_timer_315(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
int ldv_mod_timer_317(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
int ldv_mod_timer_320(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
int ldv_mod_timer_321(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
int ldv_del_timer_sync_318(struct timer_list *ldv_func_arg1 ) ;
bool ldv_queue_work_on_285(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_287(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_286(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_289(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_288(struct workqueue_struct *ldv_func_arg1 ) ;
bool ldv_cancel_delayed_work_312(struct delayed_work *ldv_func_arg1 ) ;
bool ldv_cancel_delayed_work_313(struct delayed_work *ldv_func_arg1 ) ;
bool ldv_cancel_delayed_work_314(struct delayed_work *ldv_func_arg1 ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
void choose_timer_5(struct timer_list *timer ) ;
void activate_pending_timer_5(struct timer_list *timer , unsigned long data , int pending_flag ) ;
void disable_suitable_timer_5(struct timer_list *timer ) ;
int reg_timer_5(struct timer_list *timer ) ;
__inline static struct sk_buff *alloc_skb(unsigned int size , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_303(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_311(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_copy_305(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
int ldv_pskb_expand_head_301(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_309(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_310(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_306(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_307(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_308(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
__inline static struct sk_buff *bt_skb_alloc___2(unsigned int len , gfp_t how )
{
  struct sk_buff *skb ;
  {
  skb = alloc_skb(len + 8U, how);
  if ((unsigned long )skb != (unsigned long )((struct sk_buff *)0)) {
    skb_reserve(skb, 8);
    ((struct bt_skb_cb *)(& skb->cb))->incoming = 0U;
  } else {
  }
  return (skb);
}
}
extern int hci_reset_dev(struct hci_dev * ) ;
static void h5_reset_rx(struct h5 *h5 ) ;
static void h5_link_control(struct hci_uart *hu , void const *data , size_t len )
{
  struct h5 *h5 ;
  struct sk_buff *nskb ;
  unsigned char *tmp ;
  {
  h5 = (struct h5 *)hu->priv;
  nskb = alloc_skb(3U, 32U);
  if ((unsigned long )nskb == (unsigned long )((struct sk_buff *)0)) {
    return;
  } else {
  }
  ((struct bt_skb_cb *)(& nskb->cb))->pkt_type = 15U;
  tmp = skb_put(nskb, (unsigned int )len);
  memcpy((void *)tmp, data, len);
  skb_queue_tail(& h5->unrel, nskb);
  return;
}
}
static u8 h5_cfg_field(struct h5 *h5 )
{
  u8 field ;
  {
  field = 0U;
  field = (u8 )(((int )((signed char )h5->tx_win) & 7) | (int )((signed char )field));
  return (field);
}
}
static void h5_timed_event(unsigned long arg )
{
  unsigned char sync_req[2U] ;
  unsigned char conf_req[3U] ;
  struct hci_uart *hu ;
  struct h5 *h5 ;
  struct sk_buff *skb ;
  unsigned long flags ;
  struct _ddebug descriptor ;
  long tmp ;
  unsigned long tmp___0 ;
  struct _ddebug descriptor___0 ;
  long tmp___1 ;
  {
  sync_req[0] = 1U;
  sync_req[1] = 126U;
  conf_req[0] = 3U;
  conf_req[1] = 252U;
  conf_req[2] = 1U;
  hu = (struct hci_uart *)arg;
  h5 = (struct h5 *)hu->priv;
  descriptor.modname = "hci_uart";
  descriptor.function = "h5_timed_event";
  descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/4072/dscv_tempdir/dscv/ri/43_2a/drivers/bluetooth/hci_h5.c";
  descriptor.format = "%s\n";
  descriptor.lineno = 136U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "%s\n", (char *)(& (hu->hdev)->name));
  } else {
  }
  if ((unsigned int )h5->state == 0U) {
    h5_link_control(hu, (void const *)(& sync_req), 2UL);
  } else {
  }
  if ((unsigned int )h5->state == 1U) {
    conf_req[2] = h5_cfg_field(h5);
    h5_link_control(hu, (void const *)(& conf_req), 3UL);
  } else {
  }
  if ((unsigned int )h5->state != 2U) {
    tmp___0 = msecs_to_jiffies(100U);
    ldv_mod_timer_315(& h5->timer, tmp___0 + (unsigned long )jiffies);
    goto wakeup;
  } else {
  }
  if ((unsigned int )h5->sleep != 0U) {
    h5->sleep = 1;
    goto wakeup;
  } else {
  }
  descriptor___0.modname = "hci_uart";
  descriptor___0.function = "h5_timed_event";
  descriptor___0.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/4072/dscv_tempdir/dscv/ri/43_2a/drivers/bluetooth/hci_h5.c";
  descriptor___0.format = "hu %p retransmitting %u pkts\n";
  descriptor___0.lineno = 156U;
  descriptor___0.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    __dynamic_pr_debug(& descriptor___0, "hu %p retransmitting %u pkts\n", hu, h5->unack.qlen);
  } else {
  }
  ldv_spin_lock();
  goto ldv_50317;
  ldv_50316:
  h5->tx_seq = (unsigned int )((u8 )((unsigned int )h5->tx_seq + 255U)) & 7U;
  skb_queue_head(& h5->rel, skb);
  ldv_50317:
  skb = __skb_dequeue_tail(& h5->unack);
  if ((unsigned long )skb != (unsigned long )((struct sk_buff *)0)) {
    goto ldv_50316;
  } else {
  }
  spin_unlock_irqrestore(& h5->unack.lock, flags);
  wakeup:
  hci_uart_tx_wakeup(hu);
  return;
}
}
static void h5_peer_reset(struct hci_uart *hu )
{
  struct h5 *h5 ;
  {
  h5 = (struct h5 *)hu->priv;
  bt_err("Peer device has reset\n");
  h5->state = 0;
  ldv_del_timer_316(& h5->timer);
  skb_queue_purge(& h5->rel);
  skb_queue_purge(& h5->unrel);
  skb_queue_purge(& h5->unack);
  h5->tx_seq = 0U;
  h5->tx_ack = 0U;
  hci_reset_dev(hu->hdev);
  return;
}
}
static int h5_open(struct hci_uart *hu )
{
  struct h5 *h5 ;
  unsigned char sync[2U] ;
  struct _ddebug descriptor ;
  long tmp ;
  void *tmp___0 ;
  unsigned long tmp___1 ;
  {
  sync[0] = 1U;
  sync[1] = 126U;
  descriptor.modname = "hci_uart";
  descriptor.function = "h5_open";
  descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/4072/dscv_tempdir/dscv/ri/43_2a/drivers/bluetooth/hci_h5.c";
  descriptor.format = "hu %p\n";
  descriptor.lineno = 197U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "hu %p\n", hu);
  } else {
  }
  tmp___0 = kzalloc(472UL, 208U);
  h5 = (struct h5 *)tmp___0;
  if ((unsigned long )h5 == (unsigned long )((struct h5 *)0)) {
    return (-12);
  } else {
  }
  hu->priv = (void *)h5;
  skb_queue_head_init(& h5->unack);
  skb_queue_head_init(& h5->rel);
  skb_queue_head_init(& h5->unrel);
  h5_reset_rx(h5);
  reg_timer_4(& h5->timer);
  h5->timer.function = & h5_timed_event;
  h5->timer.data = (unsigned long )hu;
  h5->tx_win = 4U;
  set_bit(3L, (unsigned long volatile *)(& hu->hdev_flags));
  h5_link_control(hu, (void const *)(& sync), 2UL);
  tmp___1 = msecs_to_jiffies(100U);
  ldv_mod_timer_317(& h5->timer, tmp___1 + (unsigned long )jiffies);
  return (0);
}
}
static int h5_close(struct hci_uart *hu )
{
  struct h5 *h5 ;
  {
  h5 = (struct h5 *)hu->priv;
  ldv_del_timer_sync_318(& h5->timer);
  skb_queue_purge(& h5->unack);
  skb_queue_purge(& h5->rel);
  skb_queue_purge(& h5->unrel);
  kfree((void const *)h5);
  return (0);
}
}
static void h5_pkt_cull(struct h5 *h5 )
{
  struct sk_buff *skb ;
  struct sk_buff *tmp ;
  unsigned long flags ;
  int i ;
  int to_remove ;
  u8 seq ;
  __u32 tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  ldv_spin_lock();
  tmp___0 = skb_queue_len((struct sk_buff_head const *)(& h5->unack));
  to_remove = (int )tmp___0;
  if (to_remove == 0) {
    goto unlock;
  } else {
  }
  seq = h5->tx_seq;
  goto ldv_50346;
  ldv_50345: ;
  if ((int )h5->rx_ack == (int )seq) {
    goto ldv_50344;
  } else {
  }
  to_remove = to_remove - 1;
  seq = (unsigned int )((u8 )((unsigned int )seq + 255U)) & 7U;
  ldv_50346: ;
  if (to_remove > 0) {
    goto ldv_50345;
  } else {
  }
  ldv_50344: ;
  if ((int )h5->rx_ack != (int )seq) {
    bt_err("Controller acked invalid packet\n");
  } else {
  }
  i = 0;
  skb = h5->unack.next;
  tmp = skb->__annonCompField87.__annonCompField86.next;
  goto ldv_50349;
  ldv_50348:
  tmp___1 = i;
  i = i + 1;
  if (tmp___1 >= to_remove) {
    goto ldv_50347;
  } else {
  }
  __skb_unlink(skb, & h5->unack);
  kfree_skb(skb);
  skb = tmp;
  tmp = skb->__annonCompField87.__annonCompField86.next;
  ldv_50349: ;
  if ((unsigned long )((struct sk_buff *)(& h5->unack)) != (unsigned long )skb) {
    goto ldv_50348;
  } else {
  }
  ldv_50347:
  tmp___2 = skb_queue_empty((struct sk_buff_head const *)(& h5->unack));
  if (tmp___2 != 0) {
    ldv_del_timer_319(& h5->timer);
  } else {
  }
  unlock:
  spin_unlock_irqrestore(& h5->unack.lock, flags);
  return;
}
}
static void h5_handle_internal_rx(struct hci_uart *hu )
{
  struct h5 *h5 ;
  unsigned char sync_req[2U] ;
  unsigned char sync_rsp[2U] ;
  unsigned char conf_req[3U] ;
  unsigned char conf_rsp[2U] ;
  unsigned char wakeup_req[2U] ;
  unsigned char woken_req[2U] ;
  unsigned char sleep_req[2U] ;
  unsigned char const *hdr ;
  unsigned char const *data ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  struct _ddebug descriptor___1 ;
  long tmp___1 ;
  struct _ddebug descriptor___2 ;
  long tmp___2 ;
  struct _ddebug descriptor___3 ;
  long tmp___3 ;
  struct _ddebug descriptor___4 ;
  long tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  {
  h5 = (struct h5 *)hu->priv;
  sync_req[0] = 1U;
  sync_req[1] = 126U;
  sync_rsp[0] = 2U;
  sync_rsp[1] = 125U;
  conf_req[0] = 3U;
  conf_req[1] = 252U;
  conf_req[2] = 1U;
  conf_rsp[0] = 4U;
  conf_rsp[1] = 123U;
  wakeup_req[0] = 5U;
  wakeup_req[1] = 250U;
  woken_req[0] = 6U;
  woken_req[1] = 249U;
  sleep_req[0] = 7U;
  sleep_req[1] = 120U;
  hdr = (unsigned char const *)(h5->rx_skb)->data;
  data = (unsigned char const *)(h5->rx_skb)->data + 4U;
  descriptor.modname = "hci_uart";
  descriptor.function = "h5_handle_internal_rx";
  descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/4072/dscv_tempdir/dscv/ri/43_2a/drivers/bluetooth/hci_h5.c";
  descriptor.format = "%s\n";
  descriptor.lineno = 296U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "%s\n", (char *)(& (hu->hdev)->name));
  } else {
  }
  if (((int )*(hdr + 1UL) & 15) != 15) {
    return;
  } else {
  }
  if (((int )((unsigned char )*(hdr + 1UL)) >> 4) + ((int )*(hdr + 2UL) << 4) <= 1) {
    return;
  } else {
  }
  conf_req[2] = h5_cfg_field(h5);
  tmp___11 = memcmp((void const *)data, (void const *)(& sync_req), 2UL);
  if (tmp___11 == 0) {
    if ((unsigned int )h5->state == 2U) {
      h5_peer_reset(hu);
    } else {
    }
    h5_link_control(hu, (void const *)(& sync_rsp), 2UL);
  } else {
    tmp___10 = memcmp((void const *)data, (void const *)(& sync_rsp), 2UL);
    if (tmp___10 == 0) {
      if ((unsigned int )h5->state == 2U) {
        h5_peer_reset(hu);
      } else {
      }
      h5->state = 1;
      h5_link_control(hu, (void const *)(& conf_req), 3UL);
    } else {
      tmp___9 = memcmp((void const *)data, (void const *)(& conf_req), 2UL);
      if (tmp___9 == 0) {
        h5_link_control(hu, (void const *)(& conf_rsp), 2UL);
        h5_link_control(hu, (void const *)(& conf_req), 3UL);
      } else {
        tmp___8 = memcmp((void const *)data, (void const *)(& conf_rsp), 2UL);
        if (tmp___8 == 0) {
          if (((int )((unsigned char )*(hdr + 1UL)) >> 4) + ((int )*(hdr + 2UL) << 4) > 2) {
            h5->tx_win = (unsigned int )((u8 )*(data + 2UL)) & 7U;
          } else {
          }
          descriptor___0.modname = "hci_uart";
          descriptor___0.function = "h5_handle_internal_rx";
          descriptor___0.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/4072/dscv_tempdir/dscv/ri/43_2a/drivers/bluetooth/hci_h5.c";
          descriptor___0.format = "Three-wire init complete. tx_win %u\n";
          descriptor___0.lineno = 321U;
          descriptor___0.flags = 0U;
          tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
          if (tmp___0 != 0L) {
            __dynamic_pr_debug(& descriptor___0, "Three-wire init complete. tx_win %u\n",
                               (int )h5->tx_win);
          } else {
          }
          h5->state = 2;
          hci_uart_init_ready(hu);
          return;
        } else {
          tmp___7 = memcmp((void const *)data, (void const *)(& sleep_req), 2UL);
          if (tmp___7 == 0) {
            descriptor___1.modname = "hci_uart";
            descriptor___1.function = "h5_handle_internal_rx";
            descriptor___1.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/4072/dscv_tempdir/dscv/ri/43_2a/drivers/bluetooth/hci_h5.c";
            descriptor___1.format = "Peer went to sleep\n";
            descriptor___1.lineno = 326U;
            descriptor___1.flags = 0U;
            tmp___1 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
            if (tmp___1 != 0L) {
              __dynamic_pr_debug(& descriptor___1, "Peer went to sleep\n");
            } else {
            }
            h5->sleep = 1;
            return;
          } else {
            tmp___6 = memcmp((void const *)data, (void const *)(& woken_req),
                             2UL);
            if (tmp___6 == 0) {
              descriptor___2.modname = "hci_uart";
              descriptor___2.function = "h5_handle_internal_rx";
              descriptor___2.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/4072/dscv_tempdir/dscv/ri/43_2a/drivers/bluetooth/hci_h5.c";
              descriptor___2.format = "Peer woke up\n";
              descriptor___2.lineno = 330U;
              descriptor___2.flags = 0U;
              tmp___2 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
              if (tmp___2 != 0L) {
                __dynamic_pr_debug(& descriptor___2, "Peer woke up\n");
              } else {
              }
              h5->sleep = 0;
            } else {
              tmp___5 = memcmp((void const *)data, (void const *)(& wakeup_req),
                               2UL);
              if (tmp___5 == 0) {
                descriptor___3.modname = "hci_uart";
                descriptor___3.function = "h5_handle_internal_rx";
                descriptor___3.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/4072/dscv_tempdir/dscv/ri/43_2a/drivers/bluetooth/hci_h5.c";
                descriptor___3.format = "Peer requested wakeup\n";
                descriptor___3.lineno = 333U;
                descriptor___3.flags = 0U;
                tmp___3 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
                if (tmp___3 != 0L) {
                  __dynamic_pr_debug(& descriptor___3, "Peer requested wakeup\n");
                } else {
                }
                h5_link_control(hu, (void const *)(& woken_req), 2UL);
                h5->sleep = 0;
              } else {
                descriptor___4.modname = "hci_uart";
                descriptor___4.function = "h5_handle_internal_rx";
                descriptor___4.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/4072/dscv_tempdir/dscv/ri/43_2a/drivers/bluetooth/hci_h5.c";
                descriptor___4.format = "Link Control: 0x%02hhx 0x%02hhx\n";
                descriptor___4.lineno = 337U;
                descriptor___4.flags = 0U;
                tmp___4 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
                if (tmp___4 != 0L) {
                  __dynamic_pr_debug(& descriptor___4, "Link Control: 0x%02hhx 0x%02hhx\n",
                                     (int )*data, (int )*(data + 1UL));
                } else {
                }
                return;
              }
            }
          }
        }
      }
    }
  }
  hci_uart_tx_wakeup(hu);
  return;
}
}
static void h5_complete_rx_pkt(struct hci_uart *hu )
{
  struct h5 *h5 ;
  unsigned char const *hdr ;
  {
  h5 = (struct h5 *)hu->priv;
  hdr = (unsigned char const *)(h5->rx_skb)->data;
  if (((int )((unsigned char )*hdr) >> 7) & 1) {
    h5->tx_ack = (u8 )(((int )h5->tx_ack + 1) % 8);
    set_bit(1L, (unsigned long volatile *)(& h5->flags));
    hci_uart_tx_wakeup(hu);
  } else {
  }
  h5->rx_ack = (unsigned int )((u8 )((int )((unsigned char )*hdr) >> 3)) & 7U;
  h5_pkt_cull(h5);
  switch ((int )*(hdr + 1UL) & 15) {
  case 4: ;
  case 2: ;
  case 3:
  ((struct bt_skb_cb *)(& (h5->rx_skb)->cb))->pkt_type = (unsigned int )((__u8 )*(hdr + 1UL)) & 15U;
  skb_pull(h5->rx_skb, 4U);
  hci_recv_frame(hu->hdev, h5->rx_skb);
  h5->rx_skb = (struct sk_buff *)0;
  goto ldv_50378;
  default:
  h5_handle_internal_rx(hu);
  goto ldv_50378;
  }
  ldv_50378:
  h5_reset_rx(h5);
  return;
}
}
static int h5_rx_crc(struct hci_uart *hu , unsigned char c )
{
  {
  h5_complete_rx_pkt(hu);
  return (0);
}
}
static int h5_rx_payload(struct hci_uart *hu , unsigned char c )
{
  struct h5 *h5 ;
  unsigned char const *hdr ;
  {
  h5 = (struct h5 *)hu->priv;
  hdr = (unsigned char const *)(h5->rx_skb)->data;
  if (((int )((unsigned char )*hdr) >> 6) & 1) {
    h5->rx_func = & h5_rx_crc;
    h5->rx_pending = 2UL;
  } else {
    h5_complete_rx_pkt(hu);
  }
  return (0);
}
}
static int h5_rx_3wire_hdr(struct hci_uart *hu , unsigned char c )
{
  struct h5 *h5 ;
  unsigned char const *hdr ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  h5 = (struct h5 *)hu->priv;
  hdr = (unsigned char const *)(h5->rx_skb)->data;
  descriptor.modname = "hci_uart";
  descriptor.function = "h5_rx_3wire_hdr";
  descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/4072/dscv_tempdir/dscv/ri/43_2a/drivers/bluetooth/hci_h5.c";
  descriptor.format = "%s rx: seq %u ack %u crc %u rel %u type %u len %u\n";
  descriptor.lineno = 411U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "%s rx: seq %u ack %u crc %u rel %u type %u len %u\n",
                       (char *)(& (hu->hdev)->name), (int )*hdr & 7, ((int )((unsigned char )*hdr) >> 3) & 7,
                       ((int )((unsigned char )*hdr) >> 6) & 1, ((int )((unsigned char )*hdr) >> 7) & 1,
                       (int )*(hdr + 1UL) & 15, ((int )((unsigned char )*(hdr + 1UL)) >> 4) + ((int )*(hdr + 2UL) << 4));
  } else {
  }
  if ((((((int )*hdr + (int )*(hdr + 1UL)) + (int )*(hdr + 2UL)) + (int )*(hdr + 3UL)) & 255) != 255) {
    bt_err("Invalid header checksum\n");
    h5_reset_rx(h5);
    return (0);
  } else {
  }
  if (((int )((unsigned char )*hdr) >> 7) & 1 && ((int )*hdr & 7) != (int )h5->tx_ack) {
    bt_err("Out-of-order packet arrived (%u != %u)\n", (int )*hdr & 7, (int )h5->tx_ack);
    h5_reset_rx(h5);
    return (0);
  } else {
  }
  if ((unsigned int )h5->state != 2U && ((int )*(hdr + 1UL) & 15) != 15) {
    bt_err("Non-link packet received in non-active state\n");
    h5_reset_rx(h5);
    return (0);
  } else {
  }
  h5->rx_func = & h5_rx_payload;
  h5->rx_pending = (size_t )(((int )((unsigned char )*(hdr + 1UL)) >> 4) + ((int )*(hdr + 2UL) << 4));
  return (0);
}
}
static int h5_rx_pkt_start(struct hci_uart *hu , unsigned char c )
{
  struct h5 *h5 ;
  {
  h5 = (struct h5 *)hu->priv;
  if ((unsigned int )c == 192U) {
    return (1);
  } else {
  }
  h5->rx_func = & h5_rx_3wire_hdr;
  h5->rx_pending = 4UL;
  h5->rx_skb = bt_skb_alloc___2(4101U, 32U);
  if ((unsigned long )h5->rx_skb == (unsigned long )((struct sk_buff *)0)) {
    bt_err("Can\'t allocate mem for new packet\n");
    h5_reset_rx(h5);
    return (-12);
  } else {
  }
  (h5->rx_skb)->dev = (struct net_device *)hu->hdev;
  return (0);
}
}
static int h5_rx_delimiter(struct hci_uart *hu , unsigned char c )
{
  struct h5 *h5 ;
  {
  h5 = (struct h5 *)hu->priv;
  if ((unsigned int )c == 192U) {
    h5->rx_func = & h5_rx_pkt_start;
  } else {
  }
  return (1);
}
}
static void h5_unslip_one_byte(struct h5 *h5 , unsigned char c )
{
  u8 delim ;
  u8 esc ;
  u8 const *byte ;
  int tmp ;
  int tmp___0 ;
  unsigned char *tmp___1 ;
  struct _ddebug descriptor ;
  long tmp___2 ;
  {
  delim = 192U;
  esc = 219U;
  byte = (u8 const *)(& c);
  tmp = constant_test_bit(0L, (unsigned long const volatile *)(& h5->flags));
  if (tmp == 0 && (unsigned int )c == 219U) {
    set_bit(0L, (unsigned long volatile *)(& h5->flags));
    return;
  } else {
  }
  tmp___0 = test_and_clear_bit(0L, (unsigned long volatile *)(& h5->flags));
  if (tmp___0 != 0) {
    switch ((int )c) {
    case 220:
    byte = & delim;
    goto ldv_50416;
    case 221:
    byte = & esc;
    goto ldv_50416;
    default:
    bt_err("Invalid esc byte 0x%02hhx\n", (int )c);
    h5_reset_rx(h5);
    return;
    }
    ldv_50416: ;
  } else {
  }
  tmp___1 = skb_put(h5->rx_skb, 1U);
  memcpy((void *)tmp___1, (void const *)byte, 1UL);
  h5->rx_pending = h5->rx_pending - 1UL;
  descriptor.modname = "hci_uart";
  descriptor.function = "h5_unslip_one_byte";
  descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/4072/dscv_tempdir/dscv/ri/43_2a/drivers/bluetooth/hci_h5.c";
  descriptor.format = "unsliped 0x%02hhx, rx_pending %zu\n";
  descriptor.lineno = 499U;
  descriptor.flags = 0U;
  tmp___2 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___2 != 0L) {
    __dynamic_pr_debug(& descriptor, "unsliped 0x%02hhx, rx_pending %zu\n", (int )*byte,
                       h5->rx_pending);
  } else {
  }
  return;
}
}
static void h5_reset_rx(struct h5 *h5 )
{
  {
  if ((unsigned long )h5->rx_skb != (unsigned long )((struct sk_buff *)0)) {
    kfree_skb(h5->rx_skb);
    h5->rx_skb = (struct sk_buff *)0;
  } else {
  }
  h5->rx_func = & h5_rx_delimiter;
  h5->rx_pending = 0UL;
  clear_bit(0L, (unsigned long volatile *)(& h5->flags));
  return;
}
}
static int h5_recv(struct hci_uart *hu , void const *data , int count )
{
  struct h5 *h5 ;
  unsigned char const *ptr ;
  struct _ddebug descriptor ;
  long tmp ;
  int processed ;
  {
  h5 = (struct h5 *)hu->priv;
  ptr = (unsigned char const *)data;
  descriptor.modname = "hci_uart";
  descriptor.function = "h5_recv";
  descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/4072/dscv_tempdir/dscv/ri/43_2a/drivers/bluetooth/hci_h5.c";
  descriptor.format = "%s pending %zu count %d\n";
  descriptor.lineno = 520U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "%s pending %zu count %d\n", (char *)(& (hu->hdev)->name),
                       h5->rx_pending, count);
  } else {
  }
  goto ldv_50434;
  ldv_50435: ;
  if (h5->rx_pending != 0UL) {
    if ((unsigned int )((unsigned char )*ptr) == 192U) {
      bt_err("Too short H5 packet\n");
      h5_reset_rx(h5);
      goto ldv_50434;
    } else {
    }
    h5_unslip_one_byte(h5, (int )*ptr);
    ptr = ptr + 1;
    count = count - 1;
    goto ldv_50434;
  } else {
  }
  processed = (*(h5->rx_func))(hu, (int )*ptr);
  if (processed < 0) {
    return (processed);
  } else {
  }
  ptr = ptr + (unsigned long )processed;
  count = count - processed;
  ldv_50434: ;
  if (count > 0) {
    goto ldv_50435;
  } else {
  }
  return (0);
}
}
static int h5_enqueue(struct hci_uart *hu , struct sk_buff *skb )
{
  struct h5 *h5 ;
  {
  h5 = (struct h5 *)hu->priv;
  if (skb->len > 4095U) {
    bt_err("Packet too long (%u bytes)\n", skb->len);
    kfree_skb(skb);
    return (0);
  } else {
  }
  if ((unsigned int )h5->state != 2U) {
    bt_err("Ignoring HCI data in non-active state\n");
    kfree_skb(skb);
    return (0);
  } else {
  }
  switch ((int )((struct bt_skb_cb *)(& skb->cb))->pkt_type) {
  case 2: ;
  case 1:
  skb_queue_tail(& h5->rel, skb);
  goto ldv_50444;
  case 3:
  skb_queue_tail(& h5->unrel, skb);
  goto ldv_50444;
  default:
  bt_err("Unknown packet type %u\n", (int )((struct bt_skb_cb *)(& skb->cb))->pkt_type);
  kfree_skb(skb);
  goto ldv_50444;
  }
  ldv_50444: ;
  return (0);
}
}
static void h5_slip_delim(struct sk_buff *skb )
{
  char delim ;
  unsigned char *tmp ;
  {
  delim = -64;
  tmp = skb_put(skb, 1U);
  memmove((void *)tmp, (void const *)(& delim), 1UL);
  return;
}
}
static void h5_slip_one_byte(struct sk_buff *skb , u8 c )
{
  char esc_delim[2U] ;
  char esc_esc[2U] ;
  unsigned char *tmp ;
  unsigned char *tmp___0 ;
  unsigned char *tmp___1 ;
  {
  esc_delim[0] = -37;
  esc_delim[1] = -36;
  esc_esc[0] = -37;
  esc_esc[1] = -35;
  switch ((int )c) {
  case 192:
  tmp = skb_put(skb, 2U);
  memmove((void *)tmp, (void const *)(& esc_delim), 2UL);
  goto ldv_50458;
  case 219:
  tmp___0 = skb_put(skb, 2U);
  memmove((void *)tmp___0, (void const *)(& esc_esc), 2UL);
  goto ldv_50458;
  default:
  tmp___1 = skb_put(skb, 1U);
  memmove((void *)tmp___1, (void const *)(& c), 1UL);
  }
  ldv_50458: ;
  return;
}
}
static bool valid_packet_type(u8 type )
{
  {
  switch ((int )type) {
  case 2: ;
  case 1: ;
  case 3: ;
  case 15: ;
  case 0: ;
  return (1);
  default: ;
  return (0);
  }
}
}
static struct sk_buff *h5_prepare_pkt(struct hci_uart *hu , u8 pkt_type , u8 const *data ,
                                      size_t len )
{
  struct h5 *h5 ;
  struct sk_buff *nskb ;
  u8 hdr[4U] ;
  int i ;
  bool tmp ;
  int tmp___0 ;
  struct _ddebug descriptor ;
  long tmp___1 ;
  {
  h5 = (struct h5 *)hu->priv;
  tmp = valid_packet_type((int )pkt_type);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    bt_err("Unknown packet type %u\n", (int )pkt_type);
    return ((struct sk_buff *)0);
  } else {
  }
  nskb = alloc_skb((unsigned int )(len + 7UL) * 2U, 32U);
  if ((unsigned long )nskb == (unsigned long )((struct sk_buff *)0)) {
    return ((struct sk_buff *)0);
  } else {
  }
  ((struct bt_skb_cb *)(& nskb->cb))->pkt_type = pkt_type;
  h5_slip_delim(nskb);
  hdr[0] = (int )h5->tx_ack << 3U;
  clear_bit(1L, (unsigned long volatile *)(& h5->flags));
  if ((unsigned int )pkt_type == 2U || (unsigned int )pkt_type == 1U) {
    hdr[0] = (u8 )((unsigned int )hdr[0] | 128U);
    hdr[0] = (u8 )((int )hdr[0] | (int )h5->tx_seq);
    h5->tx_seq = (u8 )(((int )h5->tx_seq + 1) % 8);
  } else {
  }
  hdr[1] = ((int )((u8 )len) << 4U) | (int )pkt_type;
  hdr[2] = (u8 )(len >> 4);
  hdr[3] = ~ ((int )((u8 )(((int )hdr[0] + (int )hdr[1]) + (int )hdr[2])));
  descriptor.modname = "hci_uart";
  descriptor.function = "h5_prepare_pkt";
  descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/4072/dscv_tempdir/dscv/ri/43_2a/drivers/bluetooth/hci_h5.c";
  descriptor.format = "%s tx: seq %u ack %u crc %u rel %u type %u len %u\n";
  descriptor.lineno = 666U;
  descriptor.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    __dynamic_pr_debug(& descriptor, "%s tx: seq %u ack %u crc %u rel %u type %u len %u\n",
                       (char *)(& (hu->hdev)->name), (int )hdr[0] & 7, ((int )hdr[0] >> 3) & 7,
                       ((int )hdr[0] >> 6) & 1, ((int )hdr[0] >> 7) & 1, (int )hdr[1] & 15,
                       ((int )hdr[1] >> 4) + ((int )hdr[2] << 4));
  } else {
  }
  i = 0;
  goto ldv_50483;
  ldv_50482:
  h5_slip_one_byte(nskb, (int )hdr[i]);
  i = i + 1;
  ldv_50483: ;
  if (i <= 3) {
    goto ldv_50482;
  } else {
  }
  i = 0;
  goto ldv_50486;
  ldv_50485:
  h5_slip_one_byte(nskb, (int )*(data + (unsigned long )i));
  i = i + 1;
  ldv_50486: ;
  if ((size_t )i < len) {
    goto ldv_50485;
  } else {
  }
  h5_slip_delim(nskb);
  return (nskb);
}
}
static struct sk_buff *h5_dequeue(struct hci_uart *hu )
{
  struct h5 *h5 ;
  unsigned long flags ;
  struct sk_buff *skb ;
  struct sk_buff *nskb ;
  unsigned char wakeup_req[2U] ;
  struct _ddebug descriptor ;
  long tmp ;
  struct sk_buff *tmp___0 ;
  unsigned long tmp___1 ;
  struct sk_buff *tmp___2 ;
  int tmp___3 ;
  {
  h5 = (struct h5 *)hu->priv;
  if ((unsigned int )h5->sleep != 0U) {
    wakeup_req[0] = 5U;
    wakeup_req[1] = 250U;
    if ((unsigned int )h5->sleep == 2U) {
      return ((struct sk_buff *)0);
    } else {
    }
    h5->sleep = 2;
    descriptor.modname = "hci_uart";
    descriptor.function = "h5_dequeue";
    descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/4072/dscv_tempdir/dscv/ri/43_2a/drivers/bluetooth/hci_h5.c";
    descriptor.format = "Sending wakeup request\n";
    descriptor.lineno = 692U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_pr_debug(& descriptor, "Sending wakeup request\n");
    } else {
    }
    ldv_mod_timer_320(& h5->timer, (unsigned long )jiffies + 2UL);
    tmp___0 = h5_prepare_pkt(hu, 15, (u8 const *)(& wakeup_req), 2UL);
    return (tmp___0);
  } else {
  }
  skb = skb_dequeue(& h5->unrel);
  if ((unsigned long )skb != (unsigned long )((struct sk_buff *)0)) {
    nskb = h5_prepare_pkt(hu, (int )((struct bt_skb_cb *)(& skb->cb))->pkt_type, (u8 const *)skb->data,
                          (size_t )skb->len);
    if ((unsigned long )nskb != (unsigned long )((struct sk_buff *)0)) {
      kfree_skb(skb);
      return (nskb);
    } else {
    }
    skb_queue_head(& h5->unrel, skb);
    bt_err("Could not dequeue pkt because alloc_skb failed\n");
  } else {
  }
  ldv_spin_lock();
  if (h5->unack.qlen >= (__u32 )h5->tx_win) {
    goto unlock;
  } else {
  }
  skb = skb_dequeue(& h5->rel);
  if ((unsigned long )skb != (unsigned long )((struct sk_buff *)0)) {
    nskb = h5_prepare_pkt(hu, (int )((struct bt_skb_cb *)(& skb->cb))->pkt_type, (u8 const *)skb->data,
                          (size_t )skb->len);
    if ((unsigned long )nskb != (unsigned long )((struct sk_buff *)0)) {
      __skb_queue_tail(& h5->unack, skb);
      tmp___1 = msecs_to_jiffies(250U);
      ldv_mod_timer_321(& h5->timer, tmp___1 + (unsigned long )jiffies);
      spin_unlock_irqrestore(& h5->unack.lock, flags);
      return (nskb);
    } else {
    }
    skb_queue_head(& h5->rel, skb);
    bt_err("Could not dequeue pkt because alloc_skb failed\n");
  } else {
  }
  unlock:
  spin_unlock_irqrestore(& h5->unack.lock, flags);
  tmp___3 = constant_test_bit(1L, (unsigned long const volatile *)(& h5->flags));
  if (tmp___3 != 0) {
    tmp___2 = h5_prepare_pkt(hu, 0, (u8 const *)0U, 0UL);
    return (tmp___2);
  } else {
  }
  return ((struct sk_buff *)0);
}
}
static int h5_flush(struct hci_uart *hu )
{
  struct _ddebug descriptor ;
  long tmp ;
  {
  descriptor.modname = "hci_uart";
  descriptor.function = "h5_flush";
  descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/4072/dscv_tempdir/dscv/ri/43_2a/drivers/bluetooth/hci_h5.c";
  descriptor.format = "hu %p\n";
  descriptor.lineno = 742U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "hu %p\n", hu);
  } else {
  }
  return (0);
}
}
static struct hci_uart_proto const h5p =
     {2U, "Three-wire (H5)", 0U, 0U, & h5_open, & h5_close, & h5_flush, 0, 0, & h5_recv,
    & h5_enqueue, & h5_dequeue};
int h5_init(void)
{
  int tmp ;
  {
  tmp = hci_uart_register_proto(& h5p);
  return (tmp);
}
}
int h5_deinit(void)
{
  int tmp ;
  {
  tmp = hci_uart_unregister_proto(& h5p);
  return (tmp);
}
}
int ldv_retval_5 ;
int ldv_retval_6 ;
void choose_timer_5(struct timer_list *timer )
{
  {
  LDV_IN_INTERRUPT = 2;
  (*(timer->function))(timer->data);
  LDV_IN_INTERRUPT = 1;
  ldv_timer_state_5 = 2;
  return;
}
}
void ldv_initialize_hci_uart_proto_7(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(304UL);
  h5p_group0 = (struct hci_uart *)tmp;
  return;
}
}
void activate_pending_timer_5(struct timer_list *timer , unsigned long data , int pending_flag )
{
  {
  if ((unsigned long )ldv_timer_list_5 == (unsigned long )timer) {
    if (ldv_timer_state_5 == 2 || pending_flag != 0) {
      ldv_timer_list_5 = timer;
      ldv_timer_list_5->data = data;
      ldv_timer_state_5 = 1;
    } else {
    }
    return;
  } else {
  }
  reg_timer_5(timer);
  ldv_timer_list_5->data = data;
  return;
}
}
void disable_suitable_timer_5(struct timer_list *timer )
{
  {
  if ((unsigned long )timer == (unsigned long )ldv_timer_list_5) {
    ldv_timer_state_5 = 0;
    return;
  } else {
  }
  return;
}
}
int reg_timer_5(struct timer_list *timer )
{
  {
  ldv_timer_list_5 = timer;
  ldv_timer_state_5 = 1;
  return (0);
}
}
void ldv_main_exported_7(void)
{
  struct sk_buff *ldvarg9 ;
  void *tmp ;
  int ldvarg7 ;
  void *ldvarg8 ;
  void *tmp___0 ;
  int tmp___1 ;
  {
  tmp = ldv_init_zalloc(232UL);
  ldvarg9 = (struct sk_buff *)tmp;
  tmp___0 = ldv_init_zalloc(1UL);
  ldvarg8 = tmp___0;
  ldv_memset((void *)(& ldvarg7), 0, 4UL);
  tmp___1 = __VERIFIER_nondet_int();
  switch (tmp___1) {
  case 0: ;
  if (ldv_state_variable_7 == 1) {
    h5_enqueue(h5p_group0, ldvarg9);
    ldv_state_variable_7 = 1;
  } else {
  }
  if (ldv_state_variable_7 == 2) {
    h5_enqueue(h5p_group0, ldvarg9);
    ldv_state_variable_7 = 2;
  } else {
  }
  goto ldv_50537;
  case 1: ;
  if (ldv_state_variable_7 == 1) {
    h5_recv(h5p_group0, (void const *)ldvarg8, ldvarg7);
    ldv_state_variable_7 = 1;
  } else {
  }
  if (ldv_state_variable_7 == 2) {
    h5_recv(h5p_group0, (void const *)ldvarg8, ldvarg7);
    ldv_state_variable_7 = 2;
  } else {
  }
  goto ldv_50537;
  case 2: ;
  if (ldv_state_variable_7 == 1) {
    h5_flush(h5p_group0);
    ldv_state_variable_7 = 1;
  } else {
  }
  if (ldv_state_variable_7 == 2) {
    h5_flush(h5p_group0);
    ldv_state_variable_7 = 2;
  } else {
  }
  goto ldv_50537;
  case 3: ;
  if (ldv_state_variable_7 == 2) {
    ldv_retval_6 = h5_close(h5p_group0);
    if (ldv_retval_6 == 0) {
      ldv_state_variable_7 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
  } else {
  }
  goto ldv_50537;
  case 4: ;
  if (ldv_state_variable_7 == 1) {
    h5_dequeue(h5p_group0);
    ldv_state_variable_7 = 1;
  } else {
  }
  if (ldv_state_variable_7 == 2) {
    h5_dequeue(h5p_group0);
    ldv_state_variable_7 = 2;
  } else {
  }
  goto ldv_50537;
  case 5: ;
  if (ldv_state_variable_7 == 1) {
    ldv_retval_5 = h5_open(h5p_group0);
    if (ldv_retval_5 == 0) {
      ldv_state_variable_7 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
  } else {
  }
  goto ldv_50537;
  default:
  ldv_stop();
  }
  ldv_50537: ;
  return;
}
}
bool ldv_queue_work_on_285(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_3(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_286(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___3 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_3(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_287(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_3(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_288(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_3(2);
  return;
}
}
bool ldv_queue_delayed_work_on_289(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___5 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_3(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
int ldv_pskb_expand_head_301(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  return __VERIFIER_nondet_int();
}
}
struct sk_buff *ldv_skb_clone_303(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv_skb_copy_305(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_306(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_307(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_308(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
int ldv_pskb_expand_head_309(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  return __VERIFIER_nondet_int();
}
}
int ldv_pskb_expand_head_310(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  return __VERIFIER_nondet_int();
}
}
struct sk_buff *ldv_skb_clone_311(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
bool ldv_cancel_delayed_work_312(struct delayed_work *ldv_func_arg1 )
{
  ldv_func_ret_type___6 ldv_func_res ;
  bool tmp ;
  {
  tmp = cancel_delayed_work(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_work_3(& ldv_func_arg1->work);
  return (ldv_func_res);
}
}
bool ldv_cancel_delayed_work_313(struct delayed_work *ldv_func_arg1 )
{
  ldv_func_ret_type___7 ldv_func_res ;
  bool tmp ;
  {
  tmp = cancel_delayed_work(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_work_3(& ldv_func_arg1->work);
  return (ldv_func_res);
}
}
bool ldv_cancel_delayed_work_314(struct delayed_work *ldv_func_arg1 )
{
  ldv_func_ret_type___8 ldv_func_res ;
  bool tmp ;
  {
  tmp = cancel_delayed_work(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_work_3(& ldv_func_arg1->work);
  return (ldv_func_res);
}
}
int ldv_mod_timer_315(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  ldv_func_ret_type___10 ldv_func_res ;
  int tmp ;
  {
  tmp = mod_timer(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  activate_pending_timer_4(ldv_func_arg1, ldv_func_arg2, 1);
  return (ldv_func_res);
}
}
int ldv_del_timer_316(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___11 ldv_func_res ;
  int tmp ;
  {
  tmp = del_timer(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_suitable_timer_4(ldv_func_arg1);
  return (ldv_func_res);
}
}
int ldv_mod_timer_317(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  ldv_func_ret_type___12 ldv_func_res ;
  int tmp ;
  {
  tmp = mod_timer(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  activate_pending_timer_4(ldv_func_arg1, ldv_func_arg2, 1);
  return (ldv_func_res);
}
}
int ldv_del_timer_sync_318(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___13 ldv_func_res ;
  int tmp ;
  {
  tmp = del_timer_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_suitable_timer_4(ldv_func_arg1);
  return (ldv_func_res);
}
}
int ldv_del_timer_319(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___14 ldv_func_res ;
  int tmp ;
  {
  tmp = del_timer(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_suitable_timer_4(ldv_func_arg1);
  return (ldv_func_res);
}
}
int ldv_mod_timer_320(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  ldv_func_ret_type___15 ldv_func_res ;
  int tmp ;
  {
  tmp = mod_timer(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  activate_pending_timer_4(ldv_func_arg1, ldv_func_arg2, 1);
  return (ldv_func_res);
}
}
int ldv_mod_timer_321(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  ldv_func_ret_type___16 ldv_func_res ;
  int tmp ;
  {
  tmp = mod_timer(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  activate_pending_timer_4(ldv_func_arg1, ldv_func_arg2, 1);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_351(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_353(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_352(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_355(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_354(struct workqueue_struct *ldv_func_arg1 ) ;
bool ldv_cancel_delayed_work_378(struct delayed_work *ldv_func_arg1 ) ;
bool ldv_cancel_delayed_work_379(struct delayed_work *ldv_func_arg1 ) ;
bool ldv_cancel_delayed_work_380(struct delayed_work *ldv_func_arg1 ) ;
struct sk_buff *ldv_skb_clone_369(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_377(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_copy_371(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
int ldv_pskb_expand_head_367(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_375(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_376(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_372(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_373(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_374(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
bool ldv_queue_work_on_351(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_3(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_352(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___3 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_3(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_353(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_3(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_354(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_3(2);
  return;
}
}
bool ldv_queue_delayed_work_on_355(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___5 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_3(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
int ldv_pskb_expand_head_367(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  return __VERIFIER_nondet_int();
}
}
struct sk_buff *ldv_skb_clone_369(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv_skb_copy_371(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_372(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_373(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_374(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
int ldv_pskb_expand_head_375(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  return __VERIFIER_nondet_int();
}
}
int ldv_pskb_expand_head_376(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  return __VERIFIER_nondet_int();
}
}
struct sk_buff *ldv_skb_clone_377(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
bool ldv_cancel_delayed_work_378(struct delayed_work *ldv_func_arg1 )
{
  ldv_func_ret_type___6 ldv_func_res ;
  bool tmp ;
  {
  tmp = cancel_delayed_work(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_work_3(& ldv_func_arg1->work);
  return (ldv_func_res);
}
}
bool ldv_cancel_delayed_work_379(struct delayed_work *ldv_func_arg1 )
{
  ldv_func_ret_type___7 ldv_func_res ;
  bool tmp ;
  {
  tmp = cancel_delayed_work(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_work_3(& ldv_func_arg1->work);
  return (ldv_func_res);
}
}
bool ldv_cancel_delayed_work_380(struct delayed_work *ldv_func_arg1 )
{
  ldv_func_ret_type___8 ldv_func_res ;
  bool tmp ;
  {
  tmp = cancel_delayed_work(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_work_3(& ldv_func_arg1->work);
  return (ldv_func_res);
}
}
__inline static long ldv__builtin_expect(long exp , long c ) ;
__inline static long PTR_ERR(void const *ptr ) ;
__inline static bool IS_ERR(void const *ptr ) ;
bool ldv_queue_work_on_403(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_405(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_404(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_407(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_406(struct workqueue_struct *ldv_func_arg1 ) ;
bool ldv_cancel_delayed_work_430(struct delayed_work *ldv_func_arg1 ) ;
bool ldv_cancel_delayed_work_431(struct delayed_work *ldv_func_arg1 ) ;
bool ldv_cancel_delayed_work_432(struct delayed_work *ldv_func_arg1 ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_421(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_429(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_copy_423(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
int ldv_pskb_expand_head_419(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_427(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_428(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_424(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_425(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_426(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
extern int request_firmware(struct firmware const ** , char const * , struct device * ) ;
extern void release_firmware(struct firmware const * ) ;
extern int btbcm_patchram(struct hci_dev * , struct firmware const * ) ;
extern int btbcm_initialize(struct hci_dev * , char * , size_t ) ;
extern int btbcm_finalize(struct hci_dev * ) ;
static int bcm_set_baudrate(struct hci_uart *hu , unsigned int speed )
{
  struct hci_dev *hdev ;
  struct sk_buff *skb ;
  struct bcm_update_uart_baud_rate param ;
  struct bcm_write_uart_clock_setting clock ;
  struct _ddebug descriptor ;
  long tmp ;
  unsigned long tmp___0 ;
  int err ;
  long tmp___1 ;
  bool tmp___2 ;
  struct _ddebug descriptor___0 ;
  long tmp___3 ;
  unsigned long tmp___4 ;
  int err___0 ;
  long tmp___5 ;
  bool tmp___6 ;
  {
  hdev = hu->hdev;
  if (speed > 3000000U) {
    clock.type = 1U;
    descriptor.modname = "hci_uart";
    descriptor.function = "bcm_set_baudrate";
    descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/4072/dscv_tempdir/dscv/ri/43_2a/drivers/bluetooth/hci_bcm.c";
    descriptor.format = "%s: Set Controller clock (%d)\n";
    descriptor.lineno = 51U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_pr_debug(& descriptor, "%s: Set Controller clock (%d)\n", (char *)(& hdev->name),
                         (int )clock.type);
    } else {
    }
    tmp___0 = msecs_to_jiffies(10000U);
    skb = __hci_cmd_sync(hdev, 64581, 1U, (void const *)(& clock), (u32 )tmp___0);
    tmp___2 = IS_ERR((void const *)skb);
    if ((int )tmp___2) {
      tmp___1 = PTR_ERR((void const *)skb);
      err = (int )tmp___1;
      bt_err("%s: BCM: failed to write clock command (%d)\n", (char *)(& hdev->name),
             err);
      return (err);
    } else {
    }
    kfree_skb(skb);
  } else {
  }
  descriptor___0.modname = "hci_uart";
  descriptor___0.function = "bcm_set_baudrate";
  descriptor___0.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/4072/dscv_tempdir/dscv/ri/43_2a/drivers/bluetooth/hci_bcm.c";
  descriptor___0.format = "%s: Set Controller UART speed to %d bit/s\n";
  descriptor___0.lineno = 67U;
  descriptor___0.flags = 0U;
  tmp___3 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___3 != 0L) {
    __dynamic_pr_debug(& descriptor___0, "%s: Set Controller UART speed to %d bit/s\n",
                       (char *)(& hdev->name), speed);
  } else {
  }
  param.zero = 0U;
  param.baud_rate = speed;
  tmp___4 = msecs_to_jiffies(10000U);
  skb = __hci_cmd_sync(hdev, 64536, 6U, (void const *)(& param), (u32 )tmp___4);
  tmp___6 = IS_ERR((void const *)skb);
  if ((int )tmp___6) {
    tmp___5 = PTR_ERR((void const *)skb);
    err___0 = (int )tmp___5;
    bt_err("%s: BCM: failed to write update baudrate command (%d)\n", (char *)(& hdev->name),
           err___0);
    return (err___0);
  } else {
  }
  kfree_skb(skb);
  return (0);
}
}
static int bcm_open(struct hci_uart *hu )
{
  struct bcm_data *bcm ;
  struct _ddebug descriptor ;
  long tmp ;
  void *tmp___0 ;
  {
  descriptor.modname = "hci_uart";
  descriptor.function = "bcm_open";
  descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/4072/dscv_tempdir/dscv/ri/43_2a/drivers/bluetooth/hci_bcm.c";
  descriptor.format = "hu %p\n";
  descriptor.lineno = 93U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "hu %p\n", hu);
  } else {
  }
  tmp___0 = kzalloc(104UL, 208U);
  bcm = (struct bcm_data *)tmp___0;
  if ((unsigned long )bcm == (unsigned long )((struct bcm_data *)0)) {
    return (-12);
  } else {
  }
  skb_queue_head_init(& bcm->txq);
  hu->priv = (void *)bcm;
  return (0);
}
}
static int bcm_close(struct hci_uart *hu )
{
  struct bcm_data *bcm ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  bcm = (struct bcm_data *)hu->priv;
  descriptor.modname = "hci_uart";
  descriptor.function = "bcm_close";
  descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/4072/dscv_tempdir/dscv/ri/43_2a/drivers/bluetooth/hci_bcm.c";
  descriptor.format = "hu %p\n";
  descriptor.lineno = 109U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "hu %p\n", hu);
  } else {
  }
  skb_queue_purge(& bcm->txq);
  kfree_skb(bcm->rx_skb);
  kfree((void const *)bcm);
  hu->priv = (void *)0;
  return (0);
}
}
static int bcm_flush(struct hci_uart *hu )
{
  struct bcm_data *bcm ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  bcm = (struct bcm_data *)hu->priv;
  descriptor.modname = "hci_uart";
  descriptor.function = "bcm_flush";
  descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/4072/dscv_tempdir/dscv/ri/43_2a/drivers/bluetooth/hci_bcm.c";
  descriptor.format = "hu %p\n";
  descriptor.lineno = 123U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "hu %p\n", hu);
  } else {
  }
  skb_queue_purge(& bcm->txq);
  return (0);
}
}
static int bcm_setup(struct hci_uart *hu )
{
  char fw_name[64U] ;
  struct firmware const *fw ;
  unsigned int speed ;
  int err ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  descriptor.modname = "hci_uart";
  descriptor.function = "bcm_setup";
  descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/4072/dscv_tempdir/dscv/ri/43_2a/drivers/bluetooth/hci_bcm.c";
  descriptor.format = "hu %p\n";
  descriptor.lineno = 137U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "hu %p\n", hu);
  } else {
  }
  (hu->hdev)->set_bdaddr = & btbcm_set_bdaddr;
  err = btbcm_initialize(hu->hdev, (char *)(& fw_name), 64UL);
  if (err != 0) {
    return (err);
  } else {
  }
  err = request_firmware(& fw, (char const *)(& fw_name), & (hu->hdev)->dev);
  if (err < 0) {
    bt_info("%s: BCM: Patch %s not found\n", (char *)(& (hu->hdev)->name), (char *)(& fw_name));
    return (0);
  } else {
  }
  err = btbcm_patchram(hu->hdev, fw);
  if (err != 0) {
    bt_info("%s: BCM: Patch failed (%d)\n", (char *)(& (hu->hdev)->name), err);
    goto finalize;
  } else {
  }
  if (hu->init_speed != 0U) {
    speed = hu->init_speed;
  } else
  if ((unsigned int )(hu->proto)->init_speed != 0U) {
    speed = (hu->proto)->init_speed;
  } else {
    speed = 0U;
  }
  if (speed != 0U) {
    hci_uart_set_baudrate(hu, speed);
  } else {
  }
  if (hu->oper_speed != 0U) {
    speed = hu->oper_speed;
  } else
  if ((unsigned int )(hu->proto)->oper_speed != 0U) {
    speed = (hu->proto)->oper_speed;
  } else {
    speed = 0U;
  }
  if (speed != 0U) {
    err = bcm_set_baudrate(hu, speed);
    if (err == 0) {
      hci_uart_set_baudrate(hu, speed);
    } else {
    }
  } else {
  }
  finalize:
  release_firmware(fw);
  err = btbcm_finalize(hu->hdev);
  return (err);
}
}
static struct h4_recv_pkt const bcm_recv_pkts[3U] = { {2U, 4U, 2U, 2U, 1028U, & hci_recv_frame},
        {3U, 3U, 2U, 1U, 255U, & hci_recv_frame},
        {4U, 2U, 1U, 1U, 260U, & hci_recv_frame}};
static int bcm_recv(struct hci_uart *hu , void const *data , int count )
{
  struct bcm_data *bcm ;
  int tmp ;
  int err ;
  long tmp___0 ;
  bool tmp___1 ;
  {
  bcm = (struct bcm_data *)hu->priv;
  tmp = constant_test_bit(1L, (unsigned long const volatile *)(& hu->flags));
  if (tmp == 0) {
    return (-49);
  } else {
  }
  bcm->rx_skb = h4_recv_buf(hu->hdev, bcm->rx_skb, (unsigned char const *)data,
                            count, (struct h4_recv_pkt const *)(& bcm_recv_pkts),
                            3);
  tmp___1 = IS_ERR((void const *)bcm->rx_skb);
  if ((int )tmp___1) {
    tmp___0 = PTR_ERR((void const *)bcm->rx_skb);
    err = (int )tmp___0;
    bt_err("%s: Frame reassembly failed (%d)\n", (char *)(& (hu->hdev)->name), err);
    bcm->rx_skb = (struct sk_buff *)0;
    return (err);
  } else {
  }
  return (count);
}
}
static int bcm_enqueue(struct hci_uart *hu , struct sk_buff *skb )
{
  struct bcm_data *bcm ;
  struct _ddebug descriptor ;
  long tmp ;
  unsigned char *tmp___0 ;
  {
  bcm = (struct bcm_data *)hu->priv;
  descriptor.modname = "hci_uart";
  descriptor.function = "bcm_enqueue";
  descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/4072/dscv_tempdir/dscv/ri/43_2a/drivers/bluetooth/hci_bcm.c";
  descriptor.format = "hu %p skb %p\n";
  descriptor.lineno = 219U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "hu %p skb %p\n", hu, skb);
  } else {
  }
  tmp___0 = skb_push(skb, 1U);
  memmove((void *)tmp___0, (void const *)(& ((struct bt_skb_cb *)(& skb->cb))->pkt_type),
           1UL);
  skb_queue_tail(& bcm->txq, skb);
  return (0);
}
}
static struct sk_buff *bcm_dequeue(struct hci_uart *hu )
{
  struct bcm_data *bcm ;
  struct sk_buff *tmp ;
  {
  bcm = (struct bcm_data *)hu->priv;
  tmp = skb_dequeue(& bcm->txq);
  return (tmp);
}
}
static struct hci_uart_proto const bcm_proto =
     {7U, "BCM", 115200U, 4000000U, & bcm_open, & bcm_close, & bcm_flush, & bcm_setup,
    & bcm_set_baudrate, & bcm_recv, & bcm_enqueue, & bcm_dequeue};
int bcm_init(void)
{
  int tmp ;
  {
  tmp = hci_uart_register_proto(& bcm_proto);
  return (tmp);
}
}
int bcm_deinit(void)
{
  int tmp ;
  {
  tmp = hci_uart_unregister_proto(& bcm_proto);
  return (tmp);
}
}
extern int ldv_start_6(void) ;
int ldv_retval_0 ;
extern int ldv_stop_6(void) ;
extern int ldv_disconnect_6(void) ;
extern int ldv_release_6(void) ;
int ldv_retval_1 ;
int ldv_retval_2 ;
void ldv_initialize_hci_uart_proto_6(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(304UL);
  bcm_proto_group0 = (struct hci_uart *)tmp;
  return;
}
}
void ldv_main_exported_6(void)
{
  void *ldvarg2 ;
  void *tmp ;
  unsigned int ldvarg0 ;
  struct sk_buff *ldvarg3 ;
  void *tmp___0 ;
  int ldvarg1 ;
  int tmp___1 ;
  {
  tmp = ldv_init_zalloc(1UL);
  ldvarg2 = tmp;
  tmp___0 = ldv_init_zalloc(232UL);
  ldvarg3 = (struct sk_buff *)tmp___0;
  ldv_memset((void *)(& ldvarg0), 0, 4UL);
  ldv_memset((void *)(& ldvarg1), 0, 4UL);
  tmp___1 = __VERIFIER_nondet_int();
  switch (tmp___1) {
  case 0: ;
  if (ldv_state_variable_6 == 4) {
    bcm_enqueue(bcm_proto_group0, ldvarg3);
    ldv_state_variable_6 = 4;
  } else {
  }
  if (ldv_state_variable_6 == 1) {
    bcm_enqueue(bcm_proto_group0, ldvarg3);
    ldv_state_variable_6 = 1;
  } else {
  }
  if (ldv_state_variable_6 == 3) {
    bcm_enqueue(bcm_proto_group0, ldvarg3);
    ldv_state_variable_6 = 3;
  } else {
  }
  if (ldv_state_variable_6 == 2) {
    bcm_enqueue(bcm_proto_group0, ldvarg3);
    ldv_state_variable_6 = 2;
  } else {
  }
  if (ldv_state_variable_6 == 5) {
    bcm_enqueue(bcm_proto_group0, ldvarg3);
    ldv_state_variable_6 = 5;
  } else {
  }
  goto ldv_50397;
  case 1: ;
  if (ldv_state_variable_6 == 4) {
    bcm_recv(bcm_proto_group0, (void const *)ldvarg2, ldvarg1);
    ldv_state_variable_6 = 4;
  } else {
  }
  if (ldv_state_variable_6 == 1) {
    bcm_recv(bcm_proto_group0, (void const *)ldvarg2, ldvarg1);
    ldv_state_variable_6 = 1;
  } else {
  }
  if (ldv_state_variable_6 == 3) {
    bcm_recv(bcm_proto_group0, (void const *)ldvarg2, ldvarg1);
    ldv_state_variable_6 = 3;
  } else {
  }
  if (ldv_state_variable_6 == 2) {
    bcm_recv(bcm_proto_group0, (void const *)ldvarg2, ldvarg1);
    ldv_state_variable_6 = 2;
  } else {
  }
  if (ldv_state_variable_6 == 5) {
    bcm_recv(bcm_proto_group0, (void const *)ldvarg2, ldvarg1);
    ldv_state_variable_6 = 5;
  } else {
  }
  goto ldv_50397;
  case 2: ;
  if (ldv_state_variable_6 == 4) {
    bcm_set_baudrate(bcm_proto_group0, ldvarg0);
    ldv_state_variable_6 = 4;
  } else {
  }
  if (ldv_state_variable_6 == 1) {
    bcm_set_baudrate(bcm_proto_group0, ldvarg0);
    ldv_state_variable_6 = 1;
  } else {
  }
  if (ldv_state_variable_6 == 3) {
    bcm_set_baudrate(bcm_proto_group0, ldvarg0);
    ldv_state_variable_6 = 3;
  } else {
  }
  if (ldv_state_variable_6 == 2) {
    bcm_set_baudrate(bcm_proto_group0, ldvarg0);
    ldv_state_variable_6 = 2;
  } else {
  }
  if (ldv_state_variable_6 == 5) {
    bcm_set_baudrate(bcm_proto_group0, ldvarg0);
    ldv_state_variable_6 = 5;
  } else {
  }
  goto ldv_50397;
  case 3: ;
  if (ldv_state_variable_6 == 4) {
    bcm_flush(bcm_proto_group0);
    ldv_state_variable_6 = 4;
  } else {
  }
  if (ldv_state_variable_6 == 1) {
    bcm_flush(bcm_proto_group0);
    ldv_state_variable_6 = 1;
  } else {
  }
  if (ldv_state_variable_6 == 3) {
    bcm_flush(bcm_proto_group0);
    ldv_state_variable_6 = 3;
  } else {
  }
  if (ldv_state_variable_6 == 2) {
    bcm_flush(bcm_proto_group0);
    ldv_state_variable_6 = 2;
  } else {
  }
  if (ldv_state_variable_6 == 5) {
    bcm_flush(bcm_proto_group0);
    ldv_state_variable_6 = 5;
  } else {
  }
  goto ldv_50397;
  case 4: ;
  if (ldv_state_variable_6 == 1) {
    ldv_retval_2 = bcm_setup(bcm_proto_group0);
    if (ldv_retval_2 == 0) {
      ldv_state_variable_6 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
  } else {
  }
  goto ldv_50397;
  case 5: ;
  if (ldv_state_variable_6 == 3) {
    ldv_retval_1 = bcm_close(bcm_proto_group0);
    if (ldv_retval_1 == 0) {
      ldv_state_variable_6 = 2;
    } else {
    }
  } else {
  }
  goto ldv_50397;
  case 6: ;
  if (ldv_state_variable_6 == 4) {
    bcm_dequeue(bcm_proto_group0);
    ldv_state_variable_6 = 4;
  } else {
  }
  if (ldv_state_variable_6 == 1) {
    bcm_dequeue(bcm_proto_group0);
    ldv_state_variable_6 = 1;
  } else {
  }
  if (ldv_state_variable_6 == 3) {
    bcm_dequeue(bcm_proto_group0);
    ldv_state_variable_6 = 3;
  } else {
  }
  if (ldv_state_variable_6 == 2) {
    bcm_dequeue(bcm_proto_group0);
    ldv_state_variable_6 = 2;
  } else {
  }
  if (ldv_state_variable_6 == 5) {
    bcm_dequeue(bcm_proto_group0);
    ldv_state_variable_6 = 5;
  } else {
  }
  goto ldv_50397;
  case 7: ;
  if (ldv_state_variable_6 == 2) {
    ldv_retval_0 = bcm_open(bcm_proto_group0);
    if (ldv_retval_0 == 0) {
      ldv_state_variable_6 = 3;
    } else {
    }
  } else {
  }
  goto ldv_50397;
  case 8: ;
  if (ldv_state_variable_6 == 5) {
    ldv_stop_6();
    ldv_state_variable_6 = 3;
  } else {
  }
  goto ldv_50397;
  case 9: ;
  if (ldv_state_variable_6 == 3) {
    ldv_disconnect_6();
    ldv_state_variable_6 = 4;
  } else {
  }
  if (ldv_state_variable_6 == 2) {
    ldv_disconnect_6();
    ldv_state_variable_6 = 4;
  } else {
  }
  if (ldv_state_variable_6 == 5) {
    ldv_disconnect_6();
    ldv_state_variable_6 = 4;
  } else {
  }
  goto ldv_50397;
  case 10: ;
  if (ldv_state_variable_6 == 4) {
    ldv_release_6();
    ldv_state_variable_6 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  goto ldv_50397;
  case 11: ;
  if (ldv_state_variable_6 == 3) {
    ldv_start_6();
    ldv_state_variable_6 = 5;
  } else {
  }
  goto ldv_50397;
  default:
  ldv_stop();
  }
  ldv_50397: ;
  return;
}
}
bool ldv_queue_work_on_403(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_3(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_404(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___3 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_3(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_405(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_3(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_406(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_3(2);
  return;
}
}
bool ldv_queue_delayed_work_on_407(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___5 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_3(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
int ldv_pskb_expand_head_419(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  return __VERIFIER_nondet_int();
}
}
struct sk_buff *ldv_skb_clone_421(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv_skb_copy_423(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_424(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_425(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_426(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
int ldv_pskb_expand_head_427(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  return __VERIFIER_nondet_int();
}
}
int ldv_pskb_expand_head_428(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  return __VERIFIER_nondet_int();
}
}
struct sk_buff *ldv_skb_clone_429(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
bool ldv_cancel_delayed_work_430(struct delayed_work *ldv_func_arg1 )
{
  ldv_func_ret_type___6 ldv_func_res ;
  bool tmp ;
  {
  tmp = cancel_delayed_work(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_work_3(& ldv_func_arg1->work);
  return (ldv_func_res);
}
}
bool ldv_cancel_delayed_work_431(struct delayed_work *ldv_func_arg1 )
{
  ldv_func_ret_type___7 ldv_func_res ;
  bool tmp ;
  {
  tmp = cancel_delayed_work(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_work_3(& ldv_func_arg1->work);
  return (ldv_func_res);
}
}
bool ldv_cancel_delayed_work_432(struct delayed_work *ldv_func_arg1 )
{
  ldv_func_ret_type___8 ldv_func_res ;
  bool tmp ;
  {
  tmp = cancel_delayed_work(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_work_3(& ldv_func_arg1->work);
  return (ldv_func_res);
}
}
__inline static void ldv_error(void)
{
  {
  ERROR: ;
  __VERIFIER_error();
}
}
bool ldv_is_err(void const *ptr )
{
  {
  return ((unsigned long )ptr > 2012UL);
}
}
void *ldv_err_ptr(long error )
{
  {
  return ((void *)(2012L - error));
}
}
long ldv_ptr_err(void const *ptr )
{
  {
  return ((long )(2012UL - (unsigned long )ptr));
}
}
bool ldv_is_err_or_null(void const *ptr )
{
  bool tmp ;
  int tmp___0 ;
  {
  if ((unsigned long )ptr == (unsigned long )((void const *)0)) {
    tmp___0 = 1;
  } else {
    tmp = ldv_is_err(ptr);
    if ((int )tmp) {
      tmp___0 = 1;
    } else {
      tmp___0 = 0;
    }
  }
  return ((bool )tmp___0);
}
}
int ldv_spin = 0;
void ldv_check_alloc_flags(gfp_t flags )
{
  {
  if (ldv_spin != 0 && (flags & 16U) != 0U) {
    ldv_error();
  } else {
  }
  return;
}
}
extern struct page *ldv_some_page(void) ;
struct page *ldv_check_alloc_flags_and_return_some_page(gfp_t flags )
{
  struct page *tmp ;
  {
  if (ldv_spin != 0 && (flags & 16U) != 0U) {
    ldv_error();
  } else {
  }
  tmp = ldv_some_page();
  return (tmp);
}
}
void ldv_check_alloc_nonatomic(void)
{
  {
  if (ldv_spin != 0) {
    ldv_error();
  } else {
  }
  return;
}
}
void ldv_spin_lock(void)
{
  {
  ldv_spin = 1;
  return;
}
}
void ldv_spin_unlock(void)
{
  {
  ldv_spin = 0;
  return;
}
}
int ldv_spin_trylock(void)
{
  int is_lock ;
  {
  is_lock = ldv_undef_int();
  if (is_lock != 0) {
    return (0);
  } else {
    ldv_spin = 1;
    return (1);
  }
}
}
void __const_udelay(unsigned long arg0) {
  return;
}
void __dynamic_pr_debug(struct _ddebug *arg0, const char *arg1, ...) {
  return;
}
struct sk_buff *__hci_cmd_sync(struct hci_dev *arg0, u16 arg1, u32 arg2, const void *arg3, u32 arg4) {
  return ldv_malloc(sizeof(struct sk_buff));
}
void __init_work(struct work_struct *arg0, int arg1) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int __msecs_to_jiffies(const unsigned int arg0) {
  return __VERIFIER_nondet_ulong();
}
void __raw_spin_lock_init(raw_spinlock_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void _raw_spin_lock(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock_irqrestore(raw_spinlock_t *arg0, unsigned long arg1) {
  return;
}
void bt_err(const char *arg0, ...) {
  return;
}
void bt_info(const char *arg0, ...) {
  return;
}
int __VERIFIER_nondet_int(void);
int btbcm_check_bdaddr(struct hci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int btbcm_finalize(struct hci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int btbcm_initialize(struct hci_dev *arg0, char *arg1, size_t arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int btbcm_patchram(struct hci_dev *arg0, const struct firmware *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int btintel_check_bdaddr(struct hci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
bool __VERIFIER_nondet_bool(void);
bool cancel_delayed_work(struct delayed_work *arg0) {
  return __VERIFIER_nondet_bool();
}
bool __VERIFIER_nondet_bool(void);
bool cancel_work_sync(struct work_struct *arg0) {
  return __VERIFIER_nondet_bool();
}
int __VERIFIER_nondet_int(void);
int del_timer(struct timer_list *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int del_timer_sync(struct timer_list *arg0) {
  return __VERIFIER_nondet_int();
}
void flush_workqueue(struct workqueue_struct *arg0) {
  return;
}
struct hci_dev *hci_alloc_dev() {
  return ldv_malloc(sizeof(struct hci_dev));
}
void hci_free_dev(struct hci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int hci_recv_frame(struct hci_dev *arg0, struct sk_buff *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int hci_register_dev(struct hci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int hci_reset_dev(struct hci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
void hci_unregister_dev(struct hci_dev *arg0) {
  return;
}
void kfree_skb(struct sk_buff *arg0) {
  return;
}
void ldv_check_final_state() {
  return;
}
int __VERIFIER_nondet_int(void);
int ldv_disconnect_6() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_disconnect_8() {
  return __VERIFIER_nondet_int();
}
void ldv_initialize() {
  return;
}
int __VERIFIER_nondet_int(void);
int ldv_release_6() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_release_8() {
  return __VERIFIER_nondet_int();
}
struct page *ldv_some_page() {
  return ldv_malloc(sizeof(struct page));
}
int __VERIFIER_nondet_int(void);
int ldv_start_6() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_start_8() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_stop_6() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_stop_8() {
  return __VERIFIER_nondet_int();
}
void lockdep_init_map(struct lockdep_map *arg0, const char *arg1, struct lock_class_key *arg2, int arg3) {
  return;
}
int __VERIFIER_nondet_int(void);
int mod_timer(struct timer_list *arg0, unsigned long arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int n_tty_ioctl_helper(struct tty_struct *arg0, struct file *arg1, unsigned int arg2, unsigned long arg3) {
  return __VERIFIER_nondet_int();
}
bool __VERIFIER_nondet_bool(void);
bool queue_delayed_work_on(int arg0, struct workqueue_struct *arg1, struct delayed_work *arg2, unsigned long arg3) {
  return __VERIFIER_nondet_bool();
}
bool __VERIFIER_nondet_bool(void);
bool queue_work_on(int arg0, struct workqueue_struct *arg1, struct work_struct *arg2) {
  return __VERIFIER_nondet_bool();
}
void release_firmware(const struct firmware *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int request_firmware(const struct firmware **arg0, const char *arg1, struct device *arg2) {
  return __VERIFIER_nondet_int();
}
struct sk_buff *skb_dequeue(struct sk_buff_head *arg0) {
  return ldv_malloc(sizeof(struct sk_buff));
}
unsigned char *skb_pull(struct sk_buff *arg0, unsigned int arg1) {
  return ldv_malloc(sizeof(unsigned char));
}
unsigned char *skb_push(struct sk_buff *arg0, unsigned int arg1) {
  return ldv_malloc(sizeof(unsigned char));
}
unsigned char *skb_put(struct sk_buff *arg0, unsigned int arg1) {
  unsigned char *ret_val = arg0->data + arg0->tail;
  arg0->tail += arg1;
  return ret_val;
}
void skb_queue_head(struct sk_buff_head *arg0, struct sk_buff *arg1) {
  return;
}
void skb_queue_purge(struct sk_buff_head *arg0) {
  return;
}
void skb_queue_tail(struct sk_buff_head *arg0, struct sk_buff *arg1) {
  return;
}
void skb_trim(struct sk_buff *arg0, unsigned int arg1) {
  return;
}
void tty_driver_flush_buffer(struct tty_struct *arg0) {
  return;
}
void tty_ldisc_flush(struct tty_struct *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int tty_register_ldisc(int arg0, struct tty_ldisc_ops *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int tty_set_termios(struct tty_struct *arg0, struct ktermios *arg1) {
  return __VERIFIER_nondet_int();
}
void tty_termios_encode_baud_rate(struct ktermios *arg0, speed_t arg1, speed_t arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int tty_unregister_ldisc(int arg0) {
  return __VERIFIER_nondet_int();
}
void tty_unthrottle(struct tty_struct *arg0) {
  return;
}
void *__VERIFIER_nondet_pointer(void);
void *external_alloc(void) {
  return __VERIFIER_nondet_pointer();
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
